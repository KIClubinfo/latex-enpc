\ProvidesClass{ki}[05/12/2016 KI Clubinfo des Ponts]
\LoadClass[11pt]{article}

\newtoks\firstname
\newtoks\lastname
\newtoks\period
\newtoks\master
\newtoks\teacher
\newtoks\place
\newtoks\location

\RequirePackage[frenchb]{babel}
\RequirePackage[utf8]{inputenc}
\RequirePackage[T1]{fontenc}
\RequirePackage{charter}
\RequirePackage{graphicx}
\RequirePackage{stmaryrd}
\RequirePackage{textcomp}
\RequirePackage[a4paper,margin=1in]{geometry}

\RequirePackage{float}
\RequirePackage{empheq}
\RequirePackage{siunitx}

\makeatletter
\newenvironment{chapquote}[2][2em]
  {\setlength{\@tempdima}{#1}%
   \def\chapquote@author{#2}%
   \parshape 1 \@tempdima \dimexpr\textwidth-2\@tempdima\relax%
   \itshape}
  {\par\normalfont\raggedleft--\ \chapquote@author\hspace*{\@tempdima}\par\bigskip}
\makeatother

\RequirePackage{atbegshi,picture}

\RequirePackage{hyperref}
\RequirePackage{url}

% \setlength{\voffset}{-0.75in}
% \setlength{\headsep}{5pt}
\RequirePackage{mathtools}

\setcounter{tocdepth}{1}

\setlength{\parindent}{0em}
\setlength{\parskip}{0.5em}

\RequirePackage{fancyhdr}
\RequirePackage{lastpage}
\setlength{\headheight}{15.2pt}
\pagestyle{fancy}

\fancyhf[HL]{\the\firstname~\the\lastname}
\fancyhf[HC]{}
\fancyhf[HR]{Rapport de stage IPPEX}
\fancyhf[FL]{Mise à jour : \today}
\fancyhf[FC]{}
\fancyhf[FR]{\thepage/\pageref{LastPage}}

\AtBeginShipoutNext{\AtBeginShipoutUpperLeft{%
  \put(\dimexpr\paperwidth-1cm\relax,-2.5cm){%
  \makebox[0pt][r]{\framebox{\shortstack{%
    {\the\firstname~\scshape\the\lastname} \\%
    \the\place%
  }}}}%
}}

\addtocontents{toc}{\protect\renewcommand*\protect\addvspace[1]{}}

\makeatletter
\def\@maketitle{
\begin{titlepage}
    \centering
    \includegraphics[width=0.15\textwidth]{logo-enpc}\par\vspace{1cm}
    {\scshape\LARGE École des Ponts ParisTech \par}
    \vspace{3cm}
    {\huge\bfseries \@title \par}
    {\Large Rapport de stage d’immersion professionnel en poste d’exécutant \par}
    \medskip
    {\Large\itshape \the\firstname~\the\lastname -- Élève-ingénieur\par}
    \medskip
    {\large \@date \par}
    \vspace{1cm}
    {\Large Stage réalisé au sein de : \par}
    {\large \itshape \the\place \par}
    {\large \the\location \par}
    {\large \the\period \par}
    \vspace{1cm}
    {\Large Maître de stage : \itshape \the\master \par}
    \medskip
    {\Large Enseignant : \itshape \the\teacher \par}
\end{titlepage}
}
\makeatother
