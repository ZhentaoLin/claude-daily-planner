#!/bin/bash
# Setup script for Daily Planner plugin
# Creates the initial directory structure and files

set -e

echo "🗓️  Daily Planner Setup"
echo ""

# Check if we're in a directory with existing planner files
if [ -f "backlog.md" ] || [ -f "roadmap.md" ]; then
    echo "⚠️  Looks like you already have a planner setup here."
    read -p "Continue anyway? (y/n) " -n 1 -r
    echo
    if [[ ! $REPLY =~ ^[Yy]$ ]]; then
        exit 0
    fi
fi

# Create main tracking files if they don't exist
if [ ! -f "backlog.md" ]; then
    cat > backlog.md << 'EOF'
# Backlog

Tasks and ideas that span multiple days or haven't been scheduled yet.

## Active Work

## Blocked/Waiting

## Someday/Maybe

EOF
    echo "✅ Created backlog.md"
fi

if [ ! -f "roadmap.md" ]; then
    cat > roadmap.md << 'EOF'
# Roadmap

Long-term vision, goals, and strategic planning context.

## Current Quarter

## Next Quarter

## Future Ideas

EOF
    echo "✅ Created roadmap.md"
fi

# Create life directory and files
mkdir -p life

if [ ! -f "life/ideas.md" ]; then
    cat > life/ideas.md << 'EOF'
# Side Project Ideas

## Active Exploration

## Captured Ideas

## Completed/Archived

EOF
    echo "✅ Created life/ideas.md"
fi

if [ ! -f "life/travel.md" ]; then
    cat > life/travel.md << 'EOF'
# Travel Planning

## Upcoming Trips

## Future Travel Ideas

EOF
    echo "✅ Created life/travel.md"
fi

if [ ! -f "life/holiday-planning.md" ]; then
    cat > life/holiday-planning.md << 'EOF'
# Holiday & Event Planning

## Upcoming Events

## Gift Ideas

## Notes

EOF
    echo "✅ Created life/holiday-planning.md"
fi

# Create a README if it doesn't exist
if [ ! -f "README.md" ]; then
    cat > README.md << 'EOF'
# My Planner

Personal planning workspace powered by the Daily Planner plugin for Claude Code.

## Usage

Start Claude Code in this directory:
```bash
claude
```

Then use any of the planning commands:
- `/plan` - Start or continue daily planning
- `/checkin` - Quick task check-in
- `/strategy` - Big picture planning
- `/show` - Display today's plan
- `/review` - End-of-day review
- `/idea` - Capture a side project idea
- `/life` - Personal life planning

## Files

- `backlog.md` - Tasks spanning multiple days
- `roadmap.md` - Long-term vision and planning
- `YYYY-MM-DD.md` - Daily plan files
- `life/` - Personal planning files
EOF
    echo "✅ Created README.md"
fi

# Create a .gitignore if using git
if [ -d ".git" ]; then
    if [ ! -f ".gitignore" ]; then
        cat > .gitignore << 'EOF'
# Daily files (optional - you may want to track these)
# 20*.md

# OS files
.DS_Store
Thumbs.db

# Editor files
.vscode/
.idea/
*.swp
*.swo
EOF
        echo "✅ Created .gitignore"
    fi
fi

echo ""
echo "✨ Setup complete!"
echo ""
echo "Next steps:"
echo "  1. Start Claude Code: claude"
echo "  2. Run your first planning session: /plan"
echo ""
echo "Happy planning! 🎯"
