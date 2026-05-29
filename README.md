# claude-starter-kit

A verification-first Claude Code setup for project managers. It gives you two senior advisors (`/bizstrat`, `/datastrat`), a personalization step (`/setup-me`), and one habit — **Cite & Check** — that keeps your work accurate instead of confidently wrong.

## Before you install
- **A Claude plan that includes Opus.** The consultants run on Opus and will refuse lesser models by design.
- **Claude Code installed and signed in.** If you haven't yet:
  1. Install: follow the official Claude Code install steps for macOS.
  2. Sign in with your Claude account when prompted.
  3. Verify with `/model` that you can select Opus.

## Install the kit (3 steps)
In Claude Code, run:
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
Export your spreadsheet to CSV (in Google Sheets: **File → Download → Comma-separated values**) and drop it in your project folder. Claude Code reads it directly.

*Optional, later:* if you'd rather not re-export each time, you can connect the Google Drive connector for live access — but CSV export is the simplest reliable path and all you need to start.

## What's inside
- `/bizstrat`, `/datastrat` — your consultants (see `docs/CONSULTANTS.md`)
- `/setup-me` — re-run anytime to update your settings
- `docs/` — onboarding, AI literacy, the Decision Registry standard
- `templates/starter-project/` — copy this to start any new project

## Updating
When there's a new version: `/plugin marketplace update claude-starter-kit` then `/plugin install pm-workbench`.
