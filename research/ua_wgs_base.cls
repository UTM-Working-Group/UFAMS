\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{ua_wgs_base}[2020/07/16 UA Working Groups Base]
\LoadClass[a4paper,twoside]{report}
\usepackage[T1]{fontenc}
\usepackage[latin9]{inputenc}
\setcounter{secnumdepth}{3}
\setcounter{tocdepth}{3}
\usepackage{color}
\definecolor{note_fontcolor}{rgb}{0.800781, 0.800781, 0.800781}
\usepackage{amsmath}
\usepackage{stmaryrd}
\usepackage{graphicx}
\usepackage{wasysym}
\usepackage{nomencl}
\usepackage{tabularx}
\usepackage{array,multirow}
\usepackage{longtable}
% the following is useful when we have the old nomencl.sty package
\providecommand{\printnomenclature}{\printglossary}
\providecommand{\makenomenclature}{\makeglossary}
\makenomenclature
\usepackage[unicode=true,
 bookmarks=true,bookmarksnumbered=true,bookmarksopen=true,bookmarksopenlevel=1,
 breaklinks=false,pdfborder={0 0 0},pdfborderstyle={},backref=false,colorlinks=true]
 {hyperref}
\makeatletter

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% LyX specific LaTeX commands.
\pdfpageheight\paperheight
\pdfpagewidth\paperwidth

%% Because html converters don't know tabularnewline
\providecommand{\tabularnewline}{\\}
%% The greyedout annotation environment
\newenvironment{lyxgreyedout}
  {\textcolor{note_fontcolor}\bgroup\ignorespaces}
  {\ignorespacesafterend\egroup}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% User specified LaTeX commands.
% for subfigures/subtables
\usepackage[caption=false,font=footnotesize]{subfig}
%\usepackage{wasysym}
\usepackage{concmath}
\usepackage{mathtools}
\usepackage{tikz}
\usetikzlibrary{shapes,arrows}
\usepackage{caption}
\newcommand*{\h}{\hspace{5pt}}% for indentation
\newcommand*{\hh}{\h\h}% double indentation
\usepackage[T1]{fontenc}
\def\nompreamble{\addcontentsline{toc}{section}{\nomname}\markboth{\nomname}{\nomname}}

\def\doctype#1{\def\@doctype{#1}}
\newcommand{\printdoctype}{\@doctype}

\def\doctypeinitials#1{\def\@doctypeinitials{#1}}
\newcommand{\printdoctypeinitials}{\@doctypeinitials}

\def\docid#1{\def\@docid{#1}}
\newcommand{\printdocid}{\@docid}

\def\workinggroupinitials#1{\def\@workinggroupinitials{#1}}
\newcommand{\printworkinggroupinitials}{\@workinggroupinitials}

\def\workinggroup#1{\def\@workinggroup{#1}}
\newcommand{\printworkinggroup}{\@workinggroup}

\newif\ifdraft

\def\doctitle#1{\def\@doctitle{#1}}
\newcommand{\printdoctitle}{\@doctitle}

\usepackage{inconsolata}
\newcommand{\printdraftmark}{
\ifdraft
	\usepackage{draftwatermark}
	\SetWatermarkScale{1}
	\SetWatermarkText{\tt DRAFT}
\else
  % electronic
\fi
}


\usepackage{fancyhdr}
\setlength{\headheight}{15.2pt}
\pagestyle{fancy}
\rhead[\printworkinggroup]{\printdoctype: \printdoctitle}
\lhead[\printdoctype: \printdoctitle]{\printworkinggroup}
\rfoot[]{{\tt \printworkinggroupinitials/\printdoctypeinitials/\printdocid}}
\lfoot[{\tt \printworkinggroupinitials/\printdoctypeinitials/\printdocid}]{}
% \cfoot[{\tt \thepage}]{\tt \thepage}
\definecolor{cyanprocess}{rgb}{0.0, 0.72, 0.92}
\hypersetup{urlcolor=cyanprocess,linkcolor=cyanprocess,filecolor=cyanprocess,citecolor=cyanprocess}
\usepackage{xypic}
% Added by lyx2lyx
\renewcommand{\textendash}{--}
\renewcommand{\textemdash}{---}

\@ifundefined{showcaptionsetup}{}{%
 \PassOptionsToPackage{caption=false}{subfig}}
\usepackage{subfig}
\usepackage{rotating}
\usepackage{float}
\makeatother