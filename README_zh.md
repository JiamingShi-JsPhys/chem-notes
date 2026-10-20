[English](README.md) | **简体中文**

# 普通化学原理 — 笔记

本项目包含普通化学原理讲义笔记，使用可复用的 `chemistry.cls` 文档类编写，并由 LaTeX 排版。提供英文版和中文版。

**作者：** 施嘉名，西湖大学物理系。

## 已编译 PDF

最新编译的 PDF 可在 Releases 页面找到：

- [General_Chemistry_en.pdf](https://github.com/JiamingShi-JsPhys/chem-notes/releases/latest/download/General_Chemistry_en.pdf)
- [General_Chemistry_zh.pdf](https://github.com/JiamingShi-JsPhys/chem-notes/releases/latest/download/General_Chemistry_zh.pdf)

或访问 [最新 Releases](https://github.com/JiamingShi-JsPhys/chem-notes/releases/latest)。

## 编译

主文档：

```text
General_Chemistry_en.tex
General_Chemistry_zh.tex
```

编译英文版：

```bash
latexmk -xelatex -interaction=nonstopmode -file-line-error \
  -output-directory=build General_Chemistry_en.tex
```

编译中文版时，将文件名替换为 `General_Chemistry_zh.tex`。所有编译产物写入 `build/`。

中文版使用 `chinese` 类选项：

```latex
\documentclass[chinese]{chemistry}
```

该选项加载 `ctexart` 并将环境名称切换为中文。英文版使用：

```latex
\documentclass{chemistry}
```

## 目录结构

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

- `chemistry.cls`：共享文档类，包含页面布局、宏包、字体、定理框和自定义宏。
- `General_Chemistry_en.tex` / `General_Chemistry_zh.tex`：英文版 / 中文版入口。
- `chapters_en/` / `chapters_zh/`：英文版 / 中文版各章正文。
- `build/`：编译产物，已从 Git 中排除。

## 当前状态

第 1–3 章已完成；第 4–7 章正在进行中。共享导言区位于 `chemistry.cls`，每章只包含 `\section` 级内容。新增笔记时，在对应 `chapters_en/` 或 `chapters_zh/` 中新增文件，并在主文件中加入 `\input` 即可。

## 报告问题

发现拼写错误、错误公式或构建问题，请提交 issue，并注明主题、页码 / 章节及原文行。

- **仓库：** [JiamingShi-JsPhys/chem-notes](https://github.com/JiamingShi-JsPhys/chem-notes)
- **Issues：** [JiamingShi-JsPhys/chem-notes/issues](https://github.com/JiamingShi-JsPhys/chem-notes/issues)
