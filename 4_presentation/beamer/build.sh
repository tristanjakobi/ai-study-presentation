#!/usr/bin/env bash
# Build the Beamer presentation into a PDF.
#
# Usage:
#   ./build.sh              # build presentation.tex -> presentation.pdf
#   ./build.sh myslides.tex # build a specific .tex file
#
# Requires a TeX distribution (TeX Live / MacTeX). Prefers latexmk, falls
# back to running pdflatex twice (so the table of contents resolves).
set -euo pipefail

cd "$(dirname "$0")"
TEX_FILE="${1:-presentation.tex}"

if [[ ! -f "$TEX_FILE" ]]; then
  echo "error: $TEX_FILE not found" >&2
  exit 1
fi

if command -v latexmk >/dev/null 2>&1; then
  latexmk -pdf -interaction=nonstopmode -halt-on-error "$TEX_FILE"
elif command -v pdflatex >/dev/null 2>&1; then
  pdflatex -interaction=nonstopmode -halt-on-error "$TEX_FILE"
  pdflatex -interaction=nonstopmode -halt-on-error "$TEX_FILE"
else
  echo "error: neither latexmk nor pdflatex found. Install TeX Live or MacTeX." >&2
  exit 1
fi

echo "Done -> ${TEX_FILE%.tex}.pdf"
