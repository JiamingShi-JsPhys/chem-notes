**English** | [简体中文](README_zh.md)

# General Chemistry — Notes

This project contains lecture notes on general chemistry, written with the reusable `chemistry.cls` document class and typeset in LaTeX. Both English and Chinese versions are provided.

**Author:** Jiaming Shi, Department of Physics, Westlake University.

## Compiled PDFs

The latest compiled PDFs are available on the Releases page:

- [General_Chemistry_en.pdf](https://github.com/JiamingShi-JsPhys/chem-notes/releases/latest/download/General_Chemistry_en.pdf)
- [General_Chemistry_zh.pdf](https://github.com/JiamingShi-JsPhys/chem-notes/releases/latest/download/General_Chemistry_zh.pdf)

Or visit the [latest Releases](https://github.com/JiamingShi-JsPhys/chem-notes/releases/latest).

## Compilation

Main documents:

```text
General_Chemistry_en.tex
General_Chemistry_zh.tex
```

Compile the English version:

```bash
latexmk -xelatex -interaction=nonstopmode -file-line-error \
  -output-directory=build General_Chemistry_en.tex
```

To compile the Chinese version, replace the filename with `General_Chemistry_zh.tex`. All build artifacts are written to `build/`.

The Chinese version uses the `chinese` class option:

```latex
\documentclass[chinese]{chemistry}
```

This loads `ctexart` and switches environment names to Chinese. The English version uses:

```latex
\documentclass{chemistry}
```

## Directory Structure

```text
chem-notes/
├── General_Chemistry_en.tex
├── General_Chemistry_zh.tex
├── chemistry.cls
├── chapters_en/
├── chapters_zh/
├── build/
├── README.md
└── README_zh.md
```

- `chemistry.cls`: shared document class containing the page layout, packages, fonts, theorem boxes, and custom macros.
- `General_Chemistry_en.tex` / `General_Chemistry_zh.tex`: entry points for the English / Chinese versions.
- `chapters_en/` / `chapters_zh/`: chapter source files for the English / Chinese versions.
- `build/`: build artifacts, excluded from Git.

## Current Status

Chapters 1–3 are complete; Chapters 4–7 are in progress. The shared preamble lives in `chemistry.cls`, and each chapter contains only `\section`-level content. To add notes, create a new file in `chapters_en/` or `chapters_zh/` and add an `\input` line to the corresponding main file.

## Reporting Issues

If you find a typo, a wrong equation, or a build issue, please open an issue and include the subject, page/section, and the exact line.

- **Repository:** [JiamingShi-JsPhys/chem-notes](https://github.com/JiamingShi-JsPhys/chem-notes)
- **Issues:** [JiamingShi-JsPhys/chem-notes/issues](https://github.com/JiamingShi-JsPhys/chem-notes/issues)
