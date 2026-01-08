# Daily Planner Plugin

A flexible daily planning system for Claude Code that adapts to your workflow.

## Overview

This plugin provides a suite of commands for managing daily tasks, strategic planning, and life organization. It's designed to be lightweight and adapt to how you're feeling - from structured morning planning to casual check-ins throughout the day.

## Commands

### Daily Workflow

- **`/plan`** - Adaptive daily planning session (full structure or casual check-in)
- **`/checkin`** - Quick task suggestions and progress tracking
- **`/show`** - Display today's plan file
- **`/review`** - End-of-day task review

### Strategic Planning

- **`/strategy`** - Big picture roadmap and priority review

### Life Planning

- **`/idea`** - Quickly capture side project ideas
- **`/life`** - Personal life planning session

## Getting Started

1. Create a planner directory in your preferred location
2. Initialize with basic structure:
   ```
   planner/
   ├── backlog.md      # Tasks spanning multiple days
   ├── roadmap.md      # Long-term vision and planning
   └── YYYY-MM-DD.md   # Daily plan files
   ```
3. Run `/plan` to start your first planning session

## Philosophy

This plugin embraces flexible planning:
- **No rigid schedules** - Plan when it feels right
- **Adaptive structure** - Full ceremony or quick check-ins based on your needs
- **Context-aware** - Tracks patterns and suggests interventions for stuck tasks
- **Procrastination-friendly** - Recognizes avoidance patterns and offers strategies

## Requirements

Optional: `icalBuddy` for calendar integration (macOS only)
```bash
brew install ical-buddy
```

## File Format

Daily files use simple markdown:
```markdown
# YYYY-MM-DD

## Tasks
1. [ ] High priority task
2. [ ] Secondary task

## Deferred
- Task X - reason for deferral

## Notes
- Context about the day
```

## License

MIT
