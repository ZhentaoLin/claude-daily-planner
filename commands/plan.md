Start a new day planning session.

## Step 0: Check if daily file exists
1. Get today's date: `date +%Y-%m-%d`
2. Check if `YYYY-MM-DD.md` exists in current working directory
3. **If daily file exists**: Skip to **Casual Check-in Mode** (see bottom of this file)
4. **If daily file does NOT exist**: Continue with full planning flow below

---

## Step 1: Determine if Monday (first day of week)
If Monday, do weekly review FIRST before daily planning (go to Step 1a).
Otherwise, skip to Step 2 (Daily Planning).

### Step 1a: Weekly Review (Mondays only)
1. **Read ALL tracking files**: daily files from last week, backlog.md, roadmap.md, and any referenced docs
2. **Summarize last week**:
   - What was completed
   - What carried forward
   - Key learnings/notes
3. **Ask user for any additions** - things done but not captured
4. **Discuss strategic framing** - what's the focus for coming week/period? Don't assume - ask.

---

## Step 2: Daily Planning (Full Flow)

### Phase 1: Calendar (get user confirmation FIRST)

1. **Fetch calendar (if icalBuddy is available)**
   - Run `date` to get current time
   - Run `icalBuddy -ic "Work" eventsToday` (or whatever calendar name user specifies)
   - Present calendar **contextualized against current time**: mark meetings as "already passed" or "upcoming", show remaining time until next meeting
   - Lead with: "It's [X time], here's what's left today..."
   - Ask: "Any meetings to ignore?" (e.g., optional, skipping, cancelled)
   - Ask: "Any time adjustments?" (e.g., leaving early for lunch, starting late, hard stop)
   - **STOP HERE and wait for user response before continuing**
   - If icalBuddy not available, skip calendar and proceed to Phase 2

2. **After user confirms calendar (or if skipped)**
   - Summarize: busy/light day, estimated focus time (using user's actual availability, not just calendar times)
   - Then proceed to Phase 2

### Phase 2: Context & Task Review (only after calendar confirmed)

3. **Read context files silently**
   - First: `ls` the planner directory to understand file structure (don't assume patterns)
   - Recent daily files (last 3 days) - use actual naming pattern found
   - backlog.md
   - roadmap.md
   - Any referenced docs mentioned in these files

4. **Present carryover & ask sync questions together**
   - Show incomplete tasks from recent daily files
   - **Flag recurring deferrals**: If a task has carried forward 3+ days, highlight it and propose a specific intervention:
     - Timebox: "30 min first thing tomorrow"
     - Break down: "What's the smallest piece you can finish today?"
     - Pair with reward: "Do this, then the fun task"
     - Reframe: "Can this be a quick diagram instead of full doc?"
   - Ask about blocked/waiting items status (e.g., "PR still waiting on reviewers?", "DS evaluation update?")
   - Ask: "What's your focus for today?" (deep work vs light day vs wrap-up)
   - **Wait for user response**

### Phase 3: Task Selection (only after context sync)

5. **Present consolidated task view**
   - Carryover tasks (with updated status from user)
   - Backlog items relevant to current focus
   - Any new tasks user mentioned
   - Present in user's framing (core vs mini, or whatever structure they prefer)

6. **Collect NEW tasks**
   - Ask about any new tasks not in backlog/carryover
   - Optionally fetch Jira details if MCP available (don't block on this)

7. **Side project check**
   - Ask: "Any side project ideas pulling at you today?"
   - If yes: capture to `life/ideas.md`, remind about scheduled side project time

8. **Confirm priority order**
   - List all selected tasks
   - Ask user to confirm or adjust order

9. **Procrastination check**
   - Scan today's tasks for procrastination-prone items (documentation, write-ups, boring-but-necessary work)
   - If found, flag them and ask: "This might get skipped for shinier things. Strategy?"
   - Suggest options:
     - **Pair with reward**: Do boring task first, then fun task
     - **Timebox**: "30 min on this before anything else"
     - **Lower the bar**: What's the minimum viable version?
     - **Reframe**: Can it be a diagram/code comment instead of prose?
   - Capture chosen strategy in the daily file notes

### Phase 4: Documentation

10. **Create daily file** (minimal format)
    - Numbered task list with priority order
    - Deferred section if anything was explicitly deferred with reason
    - Brief notes section (schedule note like "busy meeting day" if relevant)
    - Include procrastination strategy if one was chosen
    - Do NOT include full calendar in the file

11. **Update backlog.md and roadmap.md**
    - Add any new long-term items identified
    - Update status of items based on discussion
    - Add context to deferred items if relevant
    - IMPORTANT: When editing, preserve existing context/notes - only add, don't remove unless explicitly asked
    - IMPORTANT: For related items (e.g., PR vs full feature, phase 1 vs full rollout), confirm which specific item the status update applies to before writing - don't conflate

12. **Update previous day's file**
    - Mark task statuses based on what user reported (completed, in-progress, dropped)

---

## Casual Check-in Mode (when daily file already exists)

If today's daily file already exists, use this lightweight approach instead of the full flow above:

1. **Read context silently**
   - Today's daily file
   - Recent daily files (last 2-3 days)
   - backlog.md, roadmap.md

2. **Present quick task view**
   - Show 2-3 **easy wins** from today's list or backlog
   - Flag any tasks deferred 3+ days with suggested intervention
   - Keep it conversational: "What sounds doable right now?"

3. **Listen and update**
   - User picks a task, tells you what they did, or asks for help prioritizing
   - Update today's daily file with any progress/changes
   - Update backlog/roadmap only if user mentions status changes

4. **Keep it lightweight**
   - No calendar check unless user asks
   - No rigid structure - adapt to what user needs
   - Focus on reducing friction and getting them moving
