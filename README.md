# Daily Planner Plugin for Claude Code

A flexible, adaptive planning system that meets you where you are - from structured morning rituals to casual mid-day check-ins.

## Philosophy

Planning shouldn't feel like a burden. This plugin is designed around a few key principles:

- **Flexible, not rigid**: Full ceremony when you need structure, lightweight check-ins when you don't
- **Context-aware**: Recognizes patterns like recurring deferrals and suggests interventions
- **Procrastination-friendly**: Acknowledges avoidance patterns and offers practical strategies
- **Adaptive to your energy**: Works whether you're in deep-work mode or just catching up

## Installation

### Option 1: Install from Marketplace (coming soon)
```bash
# Once published to Claude plugins marketplace
claude plugins install daily-planner
```

### Option 2: Install Locally

1. Clone or download this repository
2. Copy the `daily-planner` directory to your Claude Code plugins directory:
   ```bash
   cp -r daily-planner ~/.claude/plugins/
   ```
3. Restart Claude Code or run `/reload` if available

## Setup

1. Create a planner directory (anywhere you like):
   ```bash
   mkdir ~/planner
   cd ~/planner
   ```

2. Initialize the basic file structure:
   ```bash
   touch backlog.md roadmap.md
   mkdir -p life
   touch life/ideas.md
   ```

3. Start Claude Code in your planner directory:
   ```bash
   claude
   ```

4. Run your first planning session:
   ```
   /plan
   ```

## Commands Reference

### Daily Workflow

#### `/plan` - Adaptive Daily Planning
The smartest command - adapts to whether you've already planned today:

- **First time today** (no daily file exists):
  - Fetches calendar (if icalBuddy available)
  - Reviews carryover tasks and backlog
  - Facilitates task selection and prioritization
  - Creates today's daily file

- **Already planned today** (daily file exists):
  - Quick check-in mode
  - Shows easy wins
  - Updates progress

**Use when**: Starting your day, or when you need structured planning

#### `/checkin` - Quick Task Check-in
Lightweight task suggestions without the ceremony.

- Shows 2-3 easy wins you can pick up now
- Flags tasks deferred 3+ days
- Creates daily file if needed
- Conversational and casual

**Use when**: Throughout the day when you need a nudge

#### `/show` - Display Today's Plan
Simply shows your daily file contents.

**Use when**: Quick reference to see what's on your plate

#### `/review` - End-of-Day Review
Reviews task completion and updates statuses.

**Use when**: Closing out your day

### Strategic Planning

#### `/strategy` - Big Picture Planning
Step back and think strategically about priorities and roadmap.

- Reviews last 2 weeks of patterns
- Analyzes what's moving vs. stuck
- Facilitates conversation about priorities
- Updates roadmap and backlog based on decisions

**Use when**: Weekly reviews, monthly planning, or when feeling stuck

### Life Planning

#### `/idea` - Capture Side Project Ideas
Quickly saves ideas to `life/ideas.md` without interrupting your flow.

**Use when**: Inspiration strikes

#### `/life` - Personal Life Planning
Manages personal planning (travel, ideas, reminders).
Integrates with Things 3 if available.

**Use when**: Planning personal life, not daily work

## File Structure

```
planner/
├── backlog.md              # Tasks spanning multiple days
├── roadmap.md              # Long-term vision and planning context
├── YYYY-MM-DD.md           # Daily plan files (e.g., 2026-01-07.md)
└── life/
    ├── ideas.md            # Side project ideas
    ├── travel.md           # Travel planning
    └── holiday-planning.md # Holiday/event planning
```

## Daily File Format

Daily files use simple markdown:

```markdown
# 2026-01-07

## Tasks
1. [ ] High priority task
2. [ ] Secondary task

## Deferred
- Task X - reason for deferral

## Notes
- Brief context about the day (e.g., "WFH, relaxed morning")
- Procrastination strategy if relevant
```

## Calendar Integration (Optional)

For calendar-aware planning on macOS, install icalBuddy:

```bash
brew install ical-buddy
```

The `/plan` command will automatically use it if available to show your day's schedule.

## Tips & Tricks

### Reduce Morning Friction
- Use `/checkin` instead of `/plan` on low-energy mornings
- Run `/plan` later in the day if that's when you naturally think about work

### Handle Procrastination
The plugin recognizes procrastination-prone tasks (documentation, boring work) and suggests strategies:
- Timebox: "30 min on this first"
- Pair with reward: "Do boring task, then fun task"
- Lower the bar: "What's the minimum version?"
- Reframe: "Can this be a diagram instead?"

### Strategic Reviews
- Run `/strategy` on Mondays for weekly planning
- Use it when you feel scattered or unclear on priorities
- Great for quarterly planning conversations

### Side Project Management
- Use `/idea` liberally to capture thoughts without breaking flow
- Review `life/ideas.md` during `/strategy` sessions to decide what to pursue

## Customization

Feel free to modify the commands to fit your workflow:

- Edit command files in `~/.claude/plugins/daily-planner/commands/`
- Adjust calendar integration (change calendar name, disable it, etc.)
- Modify file structure to match your preferences
- Change command tone and style

## Contributing

Contributions welcome! This plugin is designed to be community-driven.

Ideas for contributions:
- Integration with other task management tools (Notion, Todoist, etc.)
- Team planning features
- Analytics and insights on planning patterns
- Mobile-friendly daily file formats

## License

MIT

## Acknowledgments

Built with Claude Code and inspired by the need for flexible, human-centered planning tools.
