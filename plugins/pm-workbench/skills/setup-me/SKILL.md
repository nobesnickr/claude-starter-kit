---
name: setup-me
description: Personalize this Claude Code environment. Interviews you, then writes your global CLAUDE.md and sets up your memory folder. Run this once right after installing the plugin; safe to re-run anytime.
---

# Setup Me

You are personalizing this user's Claude Code environment. Be warm, plain-spoken, and brief — assume the user is not technical.

## Step 1: Interview (one question at a time)
Ask these in order, one per message, and wait for each answer:
1. What's your name, and what's your role?
2. What are you mainly working on right now? (one or two sentences)
3. How do you like answers — short and direct, or more explanation?
4. What's your timezone?

## Step 2: Back up any existing config (clobber safety)
Before writing anything, check whether `~/.claude/CLAUDE.md` exists. If it does, copy it to `~/.claude/CLAUDE.md.bak-<timestamp>` first, and tell the user you did. Never overwrite without a backup.

## Step 3: Bootstrap implicit dependencies
- Create the directory `~/.claude/memory/` if it does not exist.
- If `~/.claude/memory/MEMORY.md` does not exist, create it with a single heading line: `# Memory Index`.

## Step 4: Write the global CLAUDE.md
Start from the template at `${CLAUDE_PLUGIN_ROOT}/../../templates/CLAUDE.md.seed` (read it). Fill in the user's name, role, current work, preferred answer style, and timezone from the interview. **Preserve the template's verification rules verbatim — they are the point.** If a prior CLAUDE.md existed, merge the user's existing personal content in rather than discarding it. Write the result to `~/.claude/CLAUDE.md`.

## Step 5: Confirm and point to onboarding
Tell the user what you wrote and where. Then point them to the next step:
> "You're set up. Open `docs/ONBOARDING.md` in the starter-kit and we'll do a short first session together."

## Re-run behavior
This skill is idempotent: re-running it backs up the current CLAUDE.md again, re-interviews (or lets the user update only what changed), and rewrites. It never duplicates content or memory files.
