\NeedsTeXFormat{LaTeX2e}[2011/06/27]
\ProvidesClass{ISCGRS}[2014/03/17 v0.1 Class for ISC GRS Conference]

%% TODO
% Section indentation

\LoadClass[conference]{IEEEtran}
\RequirePackage{fancyhdr}
\RequirePackage{helvet}

\def\copyrightnotice#1{\def\@copyrightnotice{#1}}
\def\conferenceheader#1{\def\@conferenceheader{#1}}

\def\helvetfont{\renewcommand*\familydefault{\sfdefault}}

%%%% Header and Title

\fancypagestyle{IEEEtitlepagestyle}{
  \fancyhf{}
  \fancyhead[R]{\helvetfont \bf{\@conferenceheader}}
  \fancyfoot[C] {\thepage}
  \fancyfoot[R]{\@copyrightnotice}% 
  \renewcommand{\footrulewidth}{0pt} 
  \renewcommand{\headrulewidth}{0pt}
}

\def\@maketitle{
\newpage
\begingroup
\centering
\helvetfont
\vskip3.0em{
  \Large
  \bf{\MakeUppercase{\@title}}
  \par
}
\vskip2.0em
\par{
  \hfill
  \begin{@IEEEauthorhalign}
    \@author
  \end{@IEEEauthorhalign}
  \hfill
  \mbox{}
  \par
}
\relax
\par
\endgroup
}

%%%% Page layout

\setlength{\textwidth}{\paperwidth}
\addtolength{\textwidth}{-1.1in}
\setlength{\textheight}{\paperheight}
\addtolength{\textheight}{-1.8in}

\twocolumn
\columnsep 0.38in

\oddsidemargin -0.5in
\evensidemargin -0.5in

\fancypagestyle{default} {
  \fancyhf{}
  \fancyfoot[C] {\thepage}
  \fancyfoot[R]{\@copyrightnotice}% 
  \renewcommand{\footrulewidth}{0pt} 
  \renewcommand{\headrulewidth}{0pt}
}

\pagestyle{default}

%%%% Abstract

\def\abstract{
  \par
  \normalfont
  \noindent
  \leavevmode
  \sffamily\textbf{ABSTRACT} 
  \normalfont
  \par
  \relax
  \noindent
  \@IEEEgobbleleadPARNLSP
}

\def\endabstract{
  \relax
  \par
  \normalfont
}

%%%% Sections, subsections, etc.
\renewcommand{\thesection}{\arabic{section}}
\renewcommand{\thesubsection}{\thesection.\arabic{subsection}}
\renewcommand{\thesubsubsection}{\thesubsection.\arabic{subsubsection}}
\renewcommand{\theparagraph}{\thesubsubsection.\arabic{paragraph}}

% whatever, IEEE, just renumber the sections
\renewcommand{\thesectiondis}{\arabic{section}}
\renewcommand{\thesubsectiondis}{\thesection.\arabic{subsection}}
\renewcommand{\thesubsubsectiondis}{\thesubsection.\arabic{subsubsection}}
\renewcommand{\theparagraphdis}{\thesubsubsection.\arabic{paragraph}}

\def\section{\@startsection{section}{1}{\z@}{-1.5ex plus -1.5ex minus -0.5ex}%
{1sp}{\sffamily\normalsize\bfseries\MakeUppercase}}%
\def\subsection{\@startsection{subsection}{2}{\z@}{1.5ex plus 1.5ex minus 0.5ex}%
{1sp}{\sffamily\normalsize\bfseries}}%

\def\subsubsection{\@startsection{subsubsection}{3}{\z@}{1.5ex plus 1.5ex minus 0.5ex}%
{1sp}{\sffamily\normalsize\bfseries}}%
\def\paragraph{\@startsection{paragraph}{4}{\z@}{1.5ex plus 1.5ex minus 0.5ex}%
{1sp}{\sffamily\normalsize\bfseries}}%
