# Working with AI without getting burned

You've used Claude in the chat app. Claude Code is different, and understanding the difference is what keeps your work accurate.

## Why AI sometimes makes things up
A language model predicts fluent text. Fluent and *true* are not the same thing. When it doesn't have a fact, it can produce a confident, well-written answer that is simply wrong — a "hallucination." It isn't lying; it has no built-in sense of "I don't actually know this." That's the trap: the wrong answer looks exactly as polished as the right one.

## How Claude Code is different from the chat app
The chat app mostly *talks*. Claude Code can *act*: it reads your real files, runs real commands, and shows you real results. That means you can make it **work from your actual data instead of its memory** — which is the single biggest defense against made-up answers.

## The habit that fixes it: Cite & Check
Use this on every output that contains a number or a factual claim:

1. **Cite** — Claude must tell you *where each number came from*: the exact file and cell/range (for example, `weekly-report.csv` row 14, column "Open Tickets"). Your setup already instructs it to do this. **A number with no source is not yet trusted.**
2. **Check one** — before you accept the whole thing, open **one** of the cited sources yourself and confirm it matches. One spot-check, every time. It takes 30 seconds and it's enough to catch fabrication.
3. **Escalate on a miss** — if your spot-check is wrong, or a claim has no source, say: *"Show me the source for each number."* If there's no source, don't use it.

### Worked example
You ask: "Summarize this week's ticket report." Claude replies: "You closed 212 tickets, up 8% from last week (`weekly-report.csv`, row 31, column 'Closed')."
- **Cite:** good — it named the file, row, and column.
- **Check one:** open `weekly-report.csv`, look at row 31 / "Closed". Does it say 212? If yes, trust it. If it says 120, you just caught a hallucination — and you caught it in half a minute.
- **Escalate:** if it had said "you closed about 200 tickets" with no cell reference, that's the signal to ask for the source before believing it.

That's the whole habit. Cite, check one, escalate on a miss. Do it every time and the "confident but wrong" problem largely goes away.
