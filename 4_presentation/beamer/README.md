# Beamer (LaTeX → PDF)

Use this backend when you want a **static PDF** presentation.

## Requirements

A TeX distribution:

- macOS: [MacTeX](https://tug.org/mactex/) (`brew install --cask mactex-no-gui`)
- Linux: `sudo apt install texlive-full` (or a smaller subset + `latexmk`)

The template defaults to the **metropolis** theme. If it is not installed,
either install `beamertheme-metropolis` or edit the `\usetheme{...}` line in
`presentation.tex` (a `default` fallback is documented there).

## Build

```bash
./build.sh                # builds presentation.tex -> presentation.pdf
./build.sh myslides.tex   # build a different file
```

## Writing slides

Edit `presentation.tex`. Each slide is a `frame`:

```latex
\begin{frame}{Slide title}
  \begin{itemize}
    \item A bullet
  \end{itemize}
\end{frame}
```

Pull content from `../../3_script/1_script.md` and reference figures produced in
`../../2_project/`.
