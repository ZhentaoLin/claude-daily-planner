#!/bin/bash
# Auto-commit watcher for Daily Planner plugin commands
# Watches the commands/ directory and commits changes automatically

set -e

PLUGIN_DIR="$(cd "$(dirname "$0")/.." && pwd)"
COMMANDS_DIR="$PLUGIN_DIR/commands"

echo "🔄 Watching for changes in $COMMANDS_DIR"
echo "   Press Ctrl+C to stop"
echo ""

# Check if fswatch is installed
if ! command -v fswatch &> /dev/null; then
    echo "❌ fswatch is not installed. Install it with:"
    echo "   brew install fswatch"
    exit 1
fi

# Function to commit changes
commit_changes() {
    local file="$1"
    local filename=$(basename "$file")

    cd "$PLUGIN_DIR"

    # Check if there are actual changes
    if git diff --quiet "$file" 2>/dev/null && git diff --cached --quiet "$file" 2>/dev/null; then
        return
    fi

    # Stage and commit
    git add "$file"

    # Get command name from filename (remove .md extension)
    local command_name="${filename%.md}"

    # Create commit message
    local commit_msg="Update /$command_name command"

    # Check if this is a new file
    if ! git ls-files --error-unmatch "$file" &>/dev/null 2>&1; then
        commit_msg="Add /$command_name command"
    fi

    git commit -m "$commit_msg" --no-verify 2>/dev/null || true

    echo "✅ Committed: $commit_msg"

    # Auto-push to remote
    if git remote get-url origin &>/dev/null; then
        git push origin main 2>/dev/null && echo "📤 Pushed to GitHub" || echo "⚠️  Push failed (maybe offline?)"
    fi
}

export -f commit_changes
export PLUGIN_DIR

# Watch for changes
fswatch -0 --event Created --event Updated --event Renamed "$COMMANDS_DIR" | while read -d "" file; do
    # Only process .md files
    if [[ "$file" == *.md ]]; then
        echo "📝 Detected change: $(basename "$file")"
        commit_changes "$file"
    fi
done
