\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{pracalicmgr2021}

\def\@baseclass{report}
\def\@rodzajpracy{licencjacka}
\DeclareOption{magisterska}{\def\@rodzajpracy{magisterska}}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{\@baseclass}}
\PassOptionsToClass{a4paper,twoside,openany,11pt}{\@baseclass}
\ProcessOptions

\LoadClass{\@baseclass}

\RequirePackage[
  a4paper,
  inner=35mm,   % na oprawę
  outer=25mm,
  top=30mm,
  bottom=30mm
]{geometry}

% brak nagłówków, tylko numer strony na dole
\pagestyle{plain}

% =========================
% STRONA TYTUŁOWA
% =========================
\renewcommand\maketitle{%
  \begin{titlepage}%
    \let\footnotesize\small
    \let\footnoterule\relax
    \let \footnote \thanks
    \begin{center}%
      {\LARGE\textbf{University of Warsaw\\
        Faculty of Philosophy}\par}
      \vspace{1cm plus 1fill} 
      {\Large\@author\\}
      \vspace{0.2cm}
      {\large Record book number: \@nralbumu\par}
      \vspace{8mm plus .1fill}
      {\Huge\textbf{\@title}\par}
      \vspace{8mm plus .1fill}
      {\large Bachelor's thesis\\[3pt]
        in the field of 
        {\@kierunek}
        \par}
      \vspace{2cm plus 1.5fill}
      \begin{flushright}\large
        \begin{tabular}{l}
          Thesis written under the supervision of\\
           \@opiekun\\
           Faculty of Philosophy University of Warsaw
        \end{tabular}
      \end{flushright}
      \vspace{1cm plus 1fill}
      {\large Warsaw, \@date\par}
    \end{center}
    \@thanks
  \end{titlepage}%
  \setcounter{footnote}{0}%
  \global\let\thanks\relax
  \global\let\maketitle\relax
  \global\let\@thanks\@empty
  \global\let\@author\@empty
  \global\let\@date\@empty
  \global\let\@title\@empty
  \global\let\title\relax
  \global\let\author\relax
  \global\let\date\relax
  \global\let\and\relax
}


\def\nralbumu#1{\gdef\@nralbumu{#1}}
\def\@nralbumu{???\ClassError{pracamgr}{Brak numeru albumu}\@ehc}

\def\kierunek#1{\gdef\@kierunek{#1}}
\def\@kierunek{???\ClassError{pracamgr}{Nie podano kierunku studiow}\@ehc}

\def\specjalnosc#1{\gdef\@specjalnosc{#1}}
\def\@specjalnosc{???\ClassError{pracamgr}{Nie podano specjalnosc studiow}\@ehc}

\def\zakres#1{\gdef\@zakres{w zakresie \MakeUppercase{#1}}}
\def\@zakres{}

\def\opiekun#1{\gdef\@opiekun{#1}}
\def\@opiekun{???\ClassError{pracamgr}{Brak danych opiekuna pracy}\@ehc}

\def\keywords#1{\gdef\@keywords{#1}}
\def\@keywords{???\ClassError{pracamgr}{Brak slow kluczowych}\@ehc}

\def\tytulang#1{\gdef\@tytulang{#1}}
\def\@tytulang{???\ClassError{pracamgr}{Brak tytulu po angielsku}\@ehc}


\renewenvironment{abstract}{%
  \titlepage
  \null\nobreak\vfil
  \@beginparpenalty\@lowpenalty
  \begin{center}%
    \bfseries\large \abstractname
    \@endparpenalty\@M
  \end{center}}%
{\par  
  \vspace*{88pt}%
  \begin{center}%
    \bfseries\large Key words
    \@endparpenalty\@M
  \end{center}
  \centerline{\@keywords\par}
  \vspace*{88pt}%
  \begin{center}%
    \bfseries\large Title of the thesis in the Polish language
    \@endparpenalty\@M
  \end{center}
  \centerline{\@tytulang\par}
  \nobreak\vfil\null\endtitlepage}


\def\cleardoublepage{\clearpage\if@twoside \ifodd\c@page\else
    \hbox{}\thispagestyle{empty}\newpage\fi\fi}


\renewcommand*\@seccntformat[1]{\csname the#1\endcsname.\enspace}
\def\numberline#1{\hb@xt@\@tempdima{#1.\hfil}}
\renewcommand*\l@chapter[2]{%
  \ifnum \c@tocdepth >\m@ne
    \addpenalty{-\@highpenalty}%
    \vskip 1.0em \@plus\p@
    \setlength\@tempdima{1.5em}%
    \begingroup
      \parindent \z@ \rightskip \@pnumwidth
      \parfillskip -\@pnumwidth
      \leavevmode \bfseries
      \advance\leftskip\@tempdima
      \hskip -\leftskip
      #1\nobreak\mdseries
      \leaders\hbox{$\m@th
        \mkern \@dotsep mu\hbox{.}\mkern \@dotsep
        mu$}\hfill
      \nobreak\hb@xt@\@pnumwidth{\hss #2}\par
      \penalty\@highpenalty
    \endgroup
  \fi}

\endinput
