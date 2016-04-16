\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{texMemo}
\RequirePackage{palatino}

\usepackage{graphicx}

% Load the Base Class
\LoadClassWithOptions{article}

% Begin Requirements
\RequirePackage{ifthen}

% Specialized memo Commands (To, From, Subject, Logo, Letterhead Address)
\def\@memotype{\relax}
\newcommand{\memotype}[1]{\gdef\@memotype{#1}}

\def\@memoto{\relax}
\newcommand{\memoto}[1]{\gdef\@memoto{#1}}

\def\@memofrom{\relax}
\newcommand{\memofrom}[1]{\gdef\@memofrom{#1}}

\def\@memosubject{\relax}
\newcommand{\memosubject}[1]{\gdef\@memosubject{#1}}

\def\@memodate{\relax}
\newcommand{\memodate}[1]{\gdef\@memodate{#1}}

% Custom Document Formatting
\newcommand\decorativeline[1][1pt]{
	\par\noindent%
	\rule[0.5ex]{\linewidth}{#1}\par
}

% Set the Paper Size and margins
\RequirePackage{geometry}
\geometry{margin=1.0in}

% Create the Letterhead and To/From Block
\renewcommand{\maketitle}{\makememotitle}
\newcommand\makememotitle{
	{\begin{center}
	\large\bf
		\ifthenelse{\equal{\@memotype}{\relax}}{}{\item [{MEMORANDUM}] \@memotype}

	\end{center}}
	% To, From, Subject Block
	\begin{description}
		\ifthenelse{\equal{\@memoto}{\relax}}{}{\item [{To:}] \@memoto}
		\ifthenelse{\equal{\@memofrom}{\relax}}{}{\item [{From:}] \@memofrom}
		\ifthenelse{\equal{\@memosubject}{\relax}}{}{\item [{Subject:}] \@memosubject}
		\ifthenelse{\equal{\@memodate}{\relax}}{}{\item [{Date:}] \@memodate}
	\end{description}
	\decorativeline\bigskip{}
}