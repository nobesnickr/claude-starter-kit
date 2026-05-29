---
name: new-project
description: Start a new project from the starter template. Creates a project folder, copies in the README and Decision Registry, and gets it ready for your data. Use whenever you're beginning a new piece of work.
---

# New Project

You are setting up a new project folder for the user from the starter template. Be brief and plain-spoken; assume the user is not technical. Do all file operations yourself — the user should never have to find or copy anything by hand.

## Step 1: Get the basics
Ask the user, in one message, and wait for the answer:
1. A short name for the project (e.g. `weekly-report`). Lowercase, dashes instead of spaces.
2. In one sentence: what's the goal — what does "done" look like?

## Step 2: Create the project from the template
- The template lives at `${CLAUDE_PLUGIN_ROOT}/../../templates/starter-project/`. Read its contents first so you know what you're copying.
- Create a new folder named after the project **in the current working directory**.
- **If a folder with that name already exists, stop and ask for a different name — never overwrite.**
- Copy the entire template into the new folder, including the `docs/` folder and `docs/DECISIONS.md`.
- In the new `README.md`, replace `{{PROJECT_NAME}}` with the project name and fill the **Goal** line with the user's one-sentence goal. Leave the other sections as prompts for them to fill in later.

## Step 3: Confirm and point to the data
Tell the user the exact folder you created. Then point them at the next step:
> "Your project is ready. Next, get your real data in: in Google Sheets, **File → Download → Comma-separated values**, then tell me *'move the CSV from my Downloads into this project'* and I'll place it for you."

## Notes
- This is a setup step, not a data step — don't try to fetch or invent data here.
- Keep it to the two questions and the copy. Don't add files the template doesn't include.
