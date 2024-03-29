\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{seastaralgebras_hw}[2021/09/11 seastaralgebras's homework LaTeX class]

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions

\LoadClass{article}

\RequirePackage[english]{babel}
\RequirePackage[margin=1in]{geometry}
\RequirePackage{mathtools}
\RequirePackage{enumitem}
\RequirePackage{framed}
\RequirePackage{amsthm}
\RequirePackage{thmtools}
\RequirePackage{amssymb}
\RequirePackage{fancyhdr}

\pagestyle{fancy}
\fancyhf{}
\rhead{Overleaf}
\lhead{Guides and tutorials}
\rfoot{Page \thepage}





% TITLE COMMANDS

\newcommand*{\yourname}[1]{\gdef\@yourname{#1}%
}
\newcommand*{\@yourname}{Firstname Lastname}
\newcommand*{\assignmentnum}[1]{\gdef\@assignmentnum{Assignment {#1}}%
}
\newcommand*{\@assignmentnum}{}
\newcommand*{\course}[1]{\gdef\@course{#1}%
}
\newcommand*{\@course}{Course Name}
\newcommand*{\sectionnum}[1]{\gdef\@sectionnum{#1}%
}
\newcommand*{\@sectionnum}{}
\newcommand*{\instructor}[1]{\gdef\@instructor{#1}%
}
\newcommand*{\@instructor}{InstructorName}
\newcommand*{\institution}[1]{\gdef\@institution{#1}%
}
\newcommand*{\@institution}{Institution Name}

\renewcommand*{\maketitle}{%
	{\centering
    {\Large\@assignmentnum\unskip\strut\par}
	}
    \vspace{.5cm}
}


% PAGE FORMATTING

\pagestyle{fancy}
\setlength{\headheight}{14pt}
\fancyhf{}
\lhead{\@yourname}
\chead{\@course \ Section \@sectionnum}
\rhead{\@date}
\lfoot{\@instructor}
\cfoot{Page \thepage}
\rfoot{\@institution}


% EXERCISE/PROOF

\declaretheoremstyle[
spaceabove=.75cm, spacebelow=0cm,
headfont=\normalfont\bfseries,
notefont=\mdseries, notebraces={(}{)},
bodyfont=\normalfont,
postheadspace=.5em,
]{mystyle}
\theoremstyle{mystyle}

\newtheorem{manualexercise}{Exercise}
\newenvironment{exercise}[1]{%
  \renewcommand\themanualexercise{#1}%
  \manualexercise
}{\endmanualexercise}

\newenvironment{solution}[1][]{\begin{proof}[Solution]}{\end{proof}}

\renewcommand\qedsymbol{$\blacksquare$}



\endinput
