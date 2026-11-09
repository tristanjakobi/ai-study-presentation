# 4 — Presentation

This step turns the script (`../3_script/`) into slides. There are **two
backends** — pick whichever fits the deliverable:

| Backend | Folder | Output | Best for |
| --- | --- | --- | --- |
| **reveal.js** | [`reveal/`](reveal/) | HTML slides in the browser | Screen-recorded video, interactive/animated slides, embedded media |
| **Beamer** | [`beamer/`](beamer/) | Static `presentation.pdf` | Printable handouts, formal decks, LaTeX math |

> **Only use one backend per project.** They are kept side by side so the
> template supports both, but a given presentation lives in exactly one folder.

## reveal.js

Requires [Node.js](https://nodejs.org) ≥ 18.

```bash
cd reveal
npm install
npm start          # serves at http://localhost:8000
```

Edit the slides in `reveal/index.html` (or point it at a Markdown file — see the
`examples/` folder and https://revealjs.com/markdown/).

## Beamer

Requires a TeX distribution (MacTeX / TeX Live). See [`beamer/README.md`](beamer/README.md).

```bash
cd beamer
./build.sh         # presentation.tex -> presentation.pdf
```
