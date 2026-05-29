# claude-starter-kit

A verification-first Claude Code setup for project managers. It gives you two senior advisors (`/bizstrat`, `/datastrat`), a personalization step (`/setup-me`), and one habit — **Cite & Check** — that keeps your work accurate instead of confidently wrong.

## First — where you'll be typing (20-second orientation)
Two places things get typed:
- **Terminal** — the Mac app where you *start* Claude Code. You type one command here: `claude`.
- **Claude Code** — once it's running in that same window, you type things starting with `/` (like `/plugin` or `/datastrat`), and you can talk to it in plain English.

New to the terminal? Anthropic has a friendly walkthrough: https://code.claude.com/docs/en/terminal-guide

## Before you install
- **A Claude plan that includes Opus** — Max is the simplest. (The free Claude plan doesn't include Claude Code at all.) The consultants run on Opus and refuse lesser models by design.
- **Claude Code installed and signed in.** If you haven't yet:
  1. Open the **Terminal** app: press `Cmd+Space`, type `Terminal`, press Enter.
  2. Paste this line, press Enter, and wait for it to finish:

         curl -fsSL https://claude.ai/install.sh | bash

     (Other install options: https://code.claude.com/docs/en/setup)
  3. Type `claude` and press Enter. The first time, it opens your browser to sign in — log in with your Claude account.
  4. With Claude Code running, type `/model` and confirm you can select **Opus**.

## Install the kit (3 steps)
With Claude Code running, type these one at a time:
```
/plugin marketplace add nobesnickr/claude-starter-kit
/plugin install pm-workbench
/setup-me
```
- The first line registers this repo as a plugin source.
- The second installs the `pm-workbench` plugin (the consultants + setup-me).
- The third personalizes your environment — answer a few questions and it writes your settings.

## Your first session
Open `docs/ONBOARDING.md` and follow the 15-minute guided first session. Read `docs/AI-LITERACY.md` first if you read nothing else.

## Getting your data in
1. In Google Sheets: **File → Download → Comma-separated values (.csv)**. It saves to your Downloads.
2. You don't need to know where to put it. In Claude Code, just ask: *"I downloaded a CSV to my Downloads — set up a project and move it in."* Claude Code finds the file and does the filesystem work for you.

*Optional, later:* if you'd rather not re-export each time, you can connect the Google Drive connector for live access — but CSV export is the simplest reliable path and all you need to start.

## What's inside
- `/bizstrat`, `/datastrat` — your consultants (see `docs/CONSULTANTS.md`)
- `/setup-me` — re-run anytime to update your settings
- `docs/` — onboarding, AI literacy, the Decision Registry standard
- `templates/starter-project/` — the skeleton for a new project. Don't copy it by hand; ask Claude Code to "start a new project from the template."

## Updating
When there's a new version: `/plugin marketplace update claude-starter-kit` then `/plugin install pm-workbench`.
