Quick daily check-in for task suggestions and progress tracking.

## Workflow

1. **Check for daily file**
   - Get today's date with `date +%Y-%m-%d`
   - Check if `YYYY-MM-DD.md` exists in current working directory

2. **Read context silently**
   - Recent daily files (last 2-3 days)
   - backlog.md
   - roadmap.md

3. **Present quick task view**
   - Show 2-3 **easy wins** the user could pick up now
   - Flag any tasks deferred 3+ days with suggested intervention:
     - Timebox: "30 min first thing?"
     - Break down: "What's the smallest piece?"
     - Pair with reward: "Do this, then the fun thing"
   - Keep it conversational, not prescriptive

4. **Wait for user response**
   - User picks a task or tells you what they did
   - Update tracking based on their choice/update

5. **Create daily file if needed**
   - If no daily file exists, create one with:
     - Tasks selected/discussed
     - Brief note about context (e.g., "WFH, relaxed morning start")
   - If file exists, update it with new info

6. **Update backlog/roadmap as needed**
   - Only if user mentions status changes
   - Keep it lightweight - don't force full review

## Tone
- Casual and conversational
- "What sounds doable?" not "Here's your prioritized list"
- Focus on easy wins and reducing friction
- No rigid structure - adapt to what user needs in the moment

## Tip
Use `/checkin` anytime during the day when you need a quick nudge on what to work on next.
