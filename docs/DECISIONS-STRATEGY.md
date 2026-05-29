# Keeping a Decision Registry

Every project you start should keep a `docs/DECISIONS.md` — a living record of the choices that shaped it. This is how a project stays understandable months later, and how Claude can pick up where you left off without guessing.

## When to record a decision
Add an entry whenever you make a choice that:
- would be expensive or awkward to reverse, or
- a future reader (including future-you) would wonder "why was it done this way?"

Skip the trivial stuff. Record the load-bearing stuff.

## The format (one ADR per decision)
ADR = "Architecture Decision Record." Each one is short:
- **Title** — a plain sentence naming the decision.
- **Date** and **Status** (Accepted / Superseded).
- **Context** — what prompted it.
- **Decision** — what you chose.
- **Why** — the reasoning, and the main alternative you rejected.
- **Consequences** — what it makes easier, and what it makes harder.

Newest entries go at the top. Never delete an old decision — if it changes, add a new ADR that supersedes it and mark the old one "Superseded."

## Why this matters for you
You manage projects. The Decision Registry is the same instinct as good meeting notes: it captures *why*, not just *what*, so nobody has to re-litigate settled choices. The starter-project template already includes a `docs/DECISIONS.md` to copy.
