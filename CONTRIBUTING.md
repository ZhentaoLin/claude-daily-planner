# Contributing to Daily Planner

Thank you for your interest in contributing! This plugin is community-driven and we welcome contributions of all kinds.

## Ways to Contribute

### 1. Share Your Workflow
The best contributions come from real usage. Share:
- How you've customized the commands
- Workflows that work for your context (remote work, office, hybrid, etc.)
- Procrastination strategies that helped you
- Variations for different work styles

### 2. Report Issues
Found a bug or have a feature request?
- Check if it's already reported in Issues
- Provide clear description with examples
- Include your use case and context

### 3. Improve Documentation
- Fix typos or unclear instructions
- Add examples and use cases
- Translate to other languages
- Create video tutorials or guides

### 4. Add Features
Some ideas for features:
- Integration with other tools (Notion, Todoist, Jira, etc.)
- Team planning capabilities
- Analytics and insights
- Custom templates
- Different planning methodologies (GTD, Time Blocking, etc.)

### 5. Refine the Philosophy
This plugin is opinionated about flexible, human-centered planning. Help us:
- Refine the core principles
- Challenge assumptions
- Test with different work styles
- Make it more inclusive of different needs

## Development Setup

1. Fork the repository
2. Clone your fork
3. Install the plugin locally:
   ```bash
   cp -r daily-planner ~/.claude/plugins/
   ```
4. Make your changes in `~/.claude/plugins/daily-planner/`
5. Test with real usage (the best test!)
6. Submit a pull request

## Command Development

Commands are markdown files in the `commands/` directory. Each command:
- Should have clear, conversational instructions
- Should specify when to read files silently vs. presenting to user
- Should preserve user context (don't delete data)
- Should adapt to what exists (graceful degradation)

### Command Template

```markdown
Brief description of what this command does.

## Workflow

1. **Step 1**
   - Clear instructions
   - What to read, what to present

2. **Step 2**
   - When to wait for user input
   - How to adapt to different contexts

## Tone
- How should Claude interact with the user
- What style fits this command
```

## Testing

The best test is real usage. Before submitting:
- Use the command in your real workflow for at least a few days
- Test edge cases (missing files, empty files, etc.)
- Ensure backward compatibility (don't break existing files)
- Test the tone (is it helpful? annoying? too verbose?)

## Pull Request Process

1. Update CHANGELOG.md with your changes
2. Update README.md if adding new features
3. Ensure commands work with both existing and new installations
4. Describe your use case and why the change helps
5. Be open to feedback and iteration

## Code of Conduct

### Our Pledge
We're building a tool for humans, by humans. Be kind, respectful, and collaborative.

### Our Standards
- Respectful and inclusive language
- Welcoming different perspectives and experiences
- Accepting constructive criticism gracefully
- Focusing on what's best for the community
- Showing empathy toward others

### Not Acceptable
- Harassment, discrimination, or exclusionary behavior
- Trolling, insulting, or derogatory comments
- Unwelcome sexual attention or advances
- Public or private harassment
- Publishing others' private information

## Questions?

Open an issue with the `question` label or start a discussion.

## Recognition

All contributors will be recognized in the README. Significant contributions will be highlighted in release notes.

Thank you for making planning better for everyone! 🎯
