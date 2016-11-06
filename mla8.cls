\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{mla8}[2016/11/06 MLA8 class]
\typeout{MLA8 package by Matthew Lavin}

\LoadClass[12pt]{article}
\RequirePackage{fancyhdr}
\RequirePackage{etoolbox}
\RequirePackage[doublespacing]{setspace}

% Class option to produce an index
\DeclareOption{index}{\RequirePackage{makeidx}\makeindex}

% Class option: load biblatex-mla


\ProcessOptions

%\pagestyle{headings}

% Page dimensions
\setlength{\paperheight}{11in}
\setlength{\paperwidth}{8.5in}
\setlength{\textwidth}{6.5in}
\setlength{\textheight}{9in}
\setlength{\footskip}{40pt}

\setlength{\hoffset}{0in}
\setlength{\voffset}{-1in}

\setlength{\oddsidemargin}{0in}
\setlength{\evensidemargin}{0in}
\setlength{\marginparwidth}{0in}
\setlength{\marginparpush}{0in}
\setlength{\marginparsep}{0in}

\setlength{\topmargin}{.5in}        
\setlength{\headsep}{18pt}

% Conforming typefaces: Helvetica, Times New Roman, Courier
\renewcommand{\sfdefault}{phv}
\renewcommand{\rmdefault}{ptm}
\renewcommand{\ttdefault}{pcr}

\fancypagestyle{norule}{ %
	\renewcommand{\headrulewidth}{0pt}
	\renewcommand{\footrulewidth}{0pt}
}
\fancyhf{}
\pagestyle{myheadings}
\pagestyle{norule}

% Tab formatting

\newcommand{\tab}{\hspace{0.5in}}

\newcommand{\@instructor}{}
\newcommand{\instructor}[1]{\gdef\@instructor{#1}}

\newcommand{\@course}{}
\newcommand{\course}[1]{\gdef\@course{#1}}

\AtBeginDocument{
	\frenchspacing
	\raggedright
	\setlength{\parindent}{.5in}}

\renewcommand{\@maketitle}{
	\raggedright
	\@author\newline
	\@instructor\newline
	\@course\newline
	\@date
	\setlength\topsep{0pt}
	\setlength\parskip{0pt}
	\begin{center}
		\@title
	\end{center}
}
