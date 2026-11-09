# CLAUDE.md

Guidance for Claude Code when working in this repository.

## What this repo is

A **template for video projects**. Copy it to start a new project, then work
through the four numbered stages in order — each folder is one stage of the
pipeline that takes a raw idea to a finished, presentable deck.

```
1_notes/        Iterative notes and idea development (1_idea.md, 2_…, 3_…)
2_project/      The actual work — code, data, experiments, figures
3_script/       The narration / script for the video (1_script.md)
4_presentation/ The slides, built with ONE of two backends (see below)
utils/          Reusable helpers and how-to docs (utils/how-to/how_to_use.md)
```

Typical workflow: jot notes → do the work in `2_project/` → write the script in
`3_script/` → build slides in `4_presentation/` → record the video.

## Presentation backends — ASK FIRST

`4_presentation/` supports **two** ways to build slides, and they are mutually
exclusive per project:

- **reveal.js** (`4_presentation/reveal/`) — HTML slides shown in the browser.
  Best for screen-recorded video, animations, and embedded media.
- **Beamer** (`4_presentation/beamer/`) — LaTeX compiled to a static PDF.
  Best for printable handouts, formal decks, and heavy math.

> **Before creating or editing any slides, ASK the user which backend they want**
> (reveal.js or Beamer) unless they have already said so. Do not assume — the
> choice determines which folder and toolchain you use, and only one backend
> should be used per project.

Once chosen:

- **reveal.js** → edit `4_presentation/reveal/index.html`; run with
  `cd 4_presentation/reveal && npm install && npm start` (needs Node ≥ 18).
- **Beamer** → edit `4_presentation/beamer/presentation.tex`; build with
  `cd 4_presentation/beamer && ./build.sh` (needs TeX Live / MacTeX).

See `4_presentation/README.md` for the full comparison.

## Conventions

- Keep stages separated: notes in `1_notes/`, deliverable work in `2_project/`,
  narration in `3_script/`, slides in `4_presentation/`.
- Draw slide content from `3_script/` and reference figures produced in
  `2_project/`.
- `4_presentation/reveal/` is an upstream reveal.js checkout — avoid modifying
  its framework internals (`js/`, `dist/`, `plugin/`); put project content in
  `index.html` or your own Markdown files.
