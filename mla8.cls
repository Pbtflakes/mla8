\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{mla8}[2016/11/06 MLA8 class]
\typeout{MLA8 package by Matthew Lavin}

\LoadClass{article}

% Following is credited to Edward Z. Yang
\ifpdf % We're generating a pdf
	\RequirePackage[pdftex]{color,graphicx}
	\pdfpagewidth=\paperwidth
	\pdfpageheight=\paperheight
	\RequirePackage{thumbpdf}
	%\pdfcompresslevel=9
\else
	\RequirePackage[dvips]{graphicx}
\fi

\RequirePackage{fancyhdr}

% Class option to produce an index
\DeclareOption{index}{\RequirePackage{makeidx}\makeindex}

% Class option: load biblatex-mla
\DeclareOption{biblatex}{\RequirePackage{biblatex-mla}}

\pagestyle{headings}

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

% Tab command to force indentation after section headings
\newcommand{\tab}{\hspace{0.5in}}
