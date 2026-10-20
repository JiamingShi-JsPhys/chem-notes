\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{chemistry}[2026/10/15 General Chemistry lecture notes class]

\newif\ifchem@chinese
\chem@chinesefalse
\DeclareOption{chinese}{\chem@chinesetrue}
\ProcessOptions\relax

\ifchem@chinese
  \LoadClass[fontset=fandol]{ctexart}
\else
  \LoadClass{article}
\fi

\RequirePackage{geometry}
\RequirePackage{amsthm}
\RequirePackage[dvipsnames,svgnames]{xcolor}
\RequirePackage[strict]{changepage}
\RequirePackage{framed}
\RequirePackage{etoolbox}
\RequirePackage{fontspec}
\RequirePackage{unicode-math}
\RequirePackage{multirow}
\RequirePackage{amsmath}
\RequirePackage{chemfig}
\RequirePackage{tikz}
\usetikzlibrary{positioning,calc,arrows}
\RequirePackage{booktabs}
\RequirePackage{pgfplots}
\RequirePackage{siunitx}
\pgfplotsset{compat=1.17}
\RequirePackage{pgffor}
\RequirePackage{makecell}
\RequirePackage{hyperref}

\IfFontExistsTF{Times New Roman}{%
  \setmainfont{Times New Roman}%
}{%
  \setmainfont{TeX Gyre Termes}%
}
\IfFontExistsTF{Arial}{%
  \setsansfont{Arial}%
}{%
  \setsansfont{TeX Gyre Heros}%
}
\IfFontExistsTF{TeX Gyre Termes Math}{%
  \setmathfont{TeX Gyre Termes Math}%
}{}

\geometry{a4paper,centering,scale=0.8}

\definecolor{defshade}{rgb}{1.0, 0.95, 0.85}
\definecolor{defborder}{rgb}{0.9, 0.5, 0.1}
\definecolor{propshade}{rgb}{0.85, 0.95, 1.0}
\definecolor{propborder}{rgb}{0.1, 0.5, 0.9}
\definecolor{exmpshade}{rgb}{0.9, 1.0, 0.9}
\definecolor{exmpborder}{rgb}{0.2, 0.7, 0.2}
\definecolor{sepline}{rgb}{0.6, 0.2, 0.8}

\hypersetup{
    colorlinks=true,
    linkcolor=sepline,
    urlcolor=blue,
    citecolor=green,
    bookmarksnumbered=true
}

\ifchem@chinese
  \newcommand{\chemdefinitionname}{定义}
  \newcommand{\chempropositionname}{命题}
  \newcommand{\chemexamplename}{示例}
  \newcommand{\chemcontentsname}{目录}
  \newcommand{\chemcolon}{：}
\else
  \newcommand{\chemdefinitionname}{Definition}
  \newcommand{\chempropositionname}{Proposition}
  \newcommand{\chemexamplename}{Example}
  \newcommand{\chemcontentsname}{Contents}
  \newcommand{\chemcolon}{:}
\fi

\renewcommand{\contentsname}{\chemcontentsname}
\renewcommand{\thesubsection}{\Alph{subsection}}

\newcommand{\defFrameStyle}{%
  \def\FrameCommand{%
    \hspace{1pt}%
    {\color{defborder}\vrule width 2pt}%
    {\color{defshade}\vrule width 4pt}%
    \colorbox{defshade}%
  }%
  \MakeFramed{\advance\hsize-\width\FrameRestore}%
  \noindent\hspace{-4.55pt}%
  \begin{adjustwidth}{}{7pt}%
  \vspace{2pt}%
}

\newcommand{\propFrameStyle}{%
  \def\FrameCommand{%
    \hspace{1pt}%
    {\color{propborder}\vrule width 2pt}%
    {\color{propshade}\vrule width 4pt}%
    \colorbox{propshade}%
  }%
  \MakeFramed{\advance\hsize-\width\FrameRestore}%
  \noindent\hspace{-4.55pt}%
  \begin{adjustwidth}{}{7pt}%
  \vspace{2pt}%
}

\newcommand{\exampleFrameStyle}{%
  \def\FrameCommand{%
    \hspace{1pt}%
    {\color{exmpborder}\vrule width 2pt}%
    {\color{exmpshade}\vrule width 4pt}%
    \colorbox{exmpshade}%
  }%
  \MakeFramed{\advance\hsize-\width\FrameRestore}%
  \noindent\hspace{-4.55pt}%
  \begin{adjustwidth}{}{7pt}%
  \vspace{2pt}%
}

\newcounter{defncount}[subsection]
\newcounter{propcount}[subsection]
\newcounter{exmpcount}[subsection]

\renewcommand{\thedefncount}{\thesection\thesubsection.\arabic{defncount}}
\renewcommand{\thepropcount}{\thesection\thesubsection.\arabic{propcount}}
\renewcommand{\theexmpcount}{\thesection\thesubsection.\arabic{exmpcount}}

\newenvironment{definition}[1][]{%
  \stepcounter{defncount}%
  \defFrameStyle
  \textbf{\chemdefinitionname\ \thedefncount\chemcolon\ \ifstrempty{#1}{}{#1}}
  \vspace{4pt}%
  \color{sepline}\hrule height 0.5pt width \linewidth
  \vspace{6pt}%
}{%
  \vspace{2pt}%
  \end{adjustwidth}\endMakeFramed%
}

\newenvironment{proposition}[1][]{%
  \stepcounter{propcount}%
  \propFrameStyle
  \textbf{\chempropositionname\ \thepropcount\chemcolon\ \ifstrempty{#1}{}{#1}}
  \vspace{4pt}%
  \color{sepline}\hrule height 0.5pt width \linewidth
  \vspace{6pt}%
}{%
  \vspace{2pt}%
  \end{adjustwidth}\endMakeFramed%
}

\newenvironment{example}[1][]{%
  \stepcounter{exmpcount}%
  \exampleFrameStyle
  \textbf{\chemexamplename\ \theexmpcount\chemcolon\ \ifstrempty{#1}{}{#1}}
  \vspace{4pt}%
  \color{sepline}\hrule height 0.5pt width \linewidth
  \vspace{6pt}%
}{%
  \vspace{2pt}%
  \end{adjustwidth}\endMakeFramed%
}

\endinput