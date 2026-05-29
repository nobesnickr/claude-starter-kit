#!/usr/bin/env bash
# Fails if any SHIPPED, user-facing file references a prior author's machine, projects,
# or absolute home paths. The internal decision trail (docs/superpowers, docs/RESEARCH)
# is excluded by design: those records legitimately name what was scrubbed.
set -euo pipefail
cd "$(dirname "$0")/.."

PATTERN='phil|pmccaffrey|vocal-booth|vocalbooth|clearprice|clear-price|hospital-pricing|/Users/|~/develop'

# Search the shipped surface only (skip git internals, this script, and the decision trail).
HITS=$(grep -rIinE "$PATTERN" \
  --exclude-dir=.git \
  --exclude-dir=superpowers \
  --exclude-dir=RESEARCH \
  --exclude=check-leakage.sh \
  . || true)

if [ -n "$HITS" ]; then
  echo "LEAKAGE FOUND:"
  echo "$HITS"
  exit 1
fi
echo "CLEAN — no leakage detected."
