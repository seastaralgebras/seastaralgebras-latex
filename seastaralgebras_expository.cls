\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{seastaralgebras_expository}[2023/09/08 Seastaralgebras Expository Notes LaTeX class ]


\newif\if@doublespaced \@doublespacedfalse % Default of single spaced documents.  To load the package setspace later, we introduce this conditional and have the option set the conditional to true.
\newif\if@sansserif \@sansseriffalse
\newif\if@boxes \@boxesfalse

\DeclareOption{doublespaced}{\@doublespacedtrue}

\DeclareOption{sansserif}{\@sansseriftrue}

\DeclareOption{boxes}{\@boxestrue}

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions

\LoadClass[11pt, letterpaper]{article}

\RequirePackage[english]{babel}
\RequirePackage[margin=1in]{geometry}
\RequirePackage{mathtools}
\RequirePackage{enumitem}
\RequirePackage{framed}
\RequirePackage{amsthm}
\RequirePackage{thmtools}
\RequirePackage{amssymb}
\RequirePackage{fancyhdr}
\RequirePackage{verbatim}
\RequirePackage[skins,theorems,breakable]{tcolorbox}
\RequirePackage{lmodern}
\RequirePackage{tabularx}

\RequirePackage{sectsty}



\sectionfont{\centering}



\if@doublespaced
    \RequirePackage{setspace} % Setspace is preferred for line spacing over \linespread because it doesn't affect things like footnotes.
    \doublespacing
\fi

\if@sansserif
  \RequirePackage{cmbright}
  \RequirePackage[OT1]{fontenc}
\fi

\if@boxes
  \tcbset{colback=white,colframe=black,fonttitle=\bfseries}

  \newtcolorbox{infobox}[0]{colback=white,
  colframe=black,
  %fonttitle=\bfseries\centering,
  % attach boxed title to top left={yshift=0mm,xshift=0mm},
  %sidebyside,
  boxed title style={boxrule=0pt,colframe=white,}
  }

  \newtcolorbox{inductionbox}[1]{title={#1},enhanced,
    coltitle=black,
    % colback=white,
    top=4mm,
    attach boxed title to top left=
    {yshift=-2mm,xshift=2mm},
    colframe=gray,
    boxed title style={size=small,colback=white}
  }
  \newcommand{\exdefncolor}{cyan!75!black}
  \newcommand{\exthmcolor}{black}
  \newcommand{\exexamplecolor}{red}
  \newcommand{\exthmbefore}{15pt}
  \newcommand{\exthmafter}{10pt}
  \newcommand{\proofcolor}{gray}
  \newcommand{\proofbefore}{10pt}
  \newcommand{\proofafter}{15pt}

  \tcolorboxenvironment{exer}{
  enhanced jigsaw,colframe=\exthmcolor,interior hidden,
  breakable,before skip=\exthmbefore,after skip=\exthmafter }
  \tcolorboxenvironment{exern}{
  enhanced jigsaw,colframe=\exthmcolor,interior hidden,
  breakable,before skip=\exthmbefore,after skip=\exthmafter }
  \tcolorboxenvironment{exeru}{
  enhanced jigsaw,colframe=\exthmcolor,interior hidden,
  breakable,before skip=\exthmbefore,after skip=\exthmafter }

  \tcolorboxenvironment{thm}{
  enhanced jigsaw,colframe=\exthmcolor,interior hidden,
  breakable,before skip=\exthmbefore,after skip=\exthmafter }
  \tcolorboxenvironment{thmn}{
  enhanced jigsaw,colframe=\exthmcolor,interior hidden,
  breakable,before skip=\exthmbefore,after skip=\exthmafter }
  \tcolorboxenvironment{thmu}{
  enhanced jigsaw,colframe=\exthmcolor,interior hidden,
  breakable,before skip=\exthmbefore,after skip=\exthmafter }

  \tcolorboxenvironment{lem}{
  enhanced jigsaw,colframe=\exthmcolor,interior hidden,
  breakable,before skip=\exthmbefore,after skip=\exthmafter }
  \tcolorboxenvironment{lemn}{
  enhanced jigsaw,colframe=\exthmcolor,interior hidden,
  breakable,before skip=\exthmbefore,after skip=\exthmafter }
  \tcolorboxenvironment{lemu}{
  enhanced jigsaw,colframe=\exthmcolor,interior hidden,
  breakable,before skip=\exthmbefore,after skip=\exthmafter }

  \tcolorboxenvironment{coro}{
  enhanced jigsaw,colframe=\exthmcolor,interior hidden,
  breakable,before skip=\exthmbefore,after skip=\exthmafter }
  \tcolorboxenvironment{coron}{
  enhanced jigsaw,colframe=\exthmcolor,interior hidden,
  breakable,before skip=\exthmbefore,after skip=\exthmafter }
  \tcolorboxenvironment{coron}{
  enhanced jigsaw,colframe=\exthmcolor,interior hidden,
  breakable,before skip=\exthmbefore,after skip=\exthmafter }

  \tcolorboxenvironment{defn}{
  enhanced jigsaw,colframe=\exdefncolor,interior hidden,
  breakable,before skip=\exthmbefore,after skip=\exthmafter }
  \tcolorboxenvironment{defnn}{
  enhanced jigsaw,colframe=\exdefncolor,interior hidden,
  breakable,before skip=\exthmbefore,after skip=\exthmafter }
  \tcolorboxenvironment{defnu}{
  enhanced jigsaw,colframe=\exdefncolor,interior hidden,
  breakable,before skip=\exthmbefore,after skip=\exthmafter }

  \tcolorboxenvironment{example}{
  enhanced jigsaw,colframe=\exexamplecolor,interior hidden,
  breakable,before skip=\exthmbefore,after skip=\exthmafter }
  \tcolorboxenvironment{examplen}{
  enhanced jigsaw,colframe=\exexamplecolor,interior hidden,
  breakable,before skip=\exthmbefore,after skip=\exthmafter }
  \tcolorboxenvironment{exampleu}{
  enhanced jigsaw,colframe=\exexamplecolor,interior hidden,
  breakable,before skip=\exthmbefore,after skip=\exthmafter }

  \tcolorboxenvironment{proof}{% `proof' from `amsthm'
  blanker,breakable,left=5mm,
  before skip=\proofbefore,after skip=\proofafter,
  borderline west={.5mm}{0pt}{\proofcolor}}
\else
  \tcbset{colback=white,colframe=black,fonttitle=\bfseries}

  \newtcolorbox{infobox}[0]{colback=white,
  colframe=black,
  %fonttitle=\bfseries\centering,
  % attach boxed title to top left={yshift=0mm,xshift=0mm},
  %sidebyside,
  sharp corners,
  boxed title style={boxrule=0pt,colframe=white,}
  }

  \newtcolorbox{inductionbox}[1]{title={#1},enhanced,sharp corners,
    coltitle=black,
    top=0.3in,
    attach boxed title to top left=
    {xshift=0em,yshift=-\tcboxedtitleheight},
    colframe=gray,
    boxed title style={sharp corners, size=small,colback=white}
  }
\fi




% PAGE FORMATTING

\fancypagestyle{firstpage}{
	\fancyhf{}
	\if@twoside
		\fancyfoot[RE,LO]{}
		\fancyfoot[C]{\thepage}
		\fancyfoot[LE,RO]{}
	\else
		\fancyfoot[L]{}
		\fancyfoot[C]{\thepage}
		\fancyfoot[R]{}
	\fi
	\renewcommand{\headrulewidth}{0pt}
	\renewcommand{\footrulewidth}{0.4pt}
}

\pagestyle{fancy}
\setlength{\headheight}{14pt}
\fancyhf{}

\if@twoside
	\fancyhead[RE,LO]{\@author}
	\fancyhead[C]{}
	\fancyhead[LE,RO]{\@shorttitle}
	\fancyfoot[RE,LO]{}
	\fancyfoot[C]{\thepage}
	\fancyfoot[LE,RO]{}
\else
	\fancyhead[L]{\@author}
	\fancyhead[C]{}
	\fancyhead[R]{\@shorttitle}
	\fancyfoot[L]{}
	\fancyfoot[C]{\thepage}
	\fancyfoot[R]{}
\fi
\renewcommand{\headrulewidth}{0.4pt}
\renewcommand{\footrulewidth}{0.4pt}




% TITLE COMMANDS

\def\ifeq#1#2{% This takes the form \ifeq{1}{2}{3}{4} where if 1=2 then 3 else 4.  Usually this is used in the context of checking if 1=empty/undefined.
  \ifx#1#2\relax
    \expandafter\@firstoftwo
  \else
    \expandafter\@secondoftwo
  \fi%
}

\newcommand*{\shorttitle}[1]{\gdef\@shorttitle{#1}}
\newcommand*{\institution}[1]{\gdef\@institution{#1}}
\newcommand*{\collaborators}[1]{\gdef\@collaborators{#1}}

\let\@title\@empty %defining these to be empty at first
\let\@shorttitle\@empty
\let\@author\@empty
\let\@course\@empty
\let\@semester\@empty
\let\@sectionnum\@empty
\let\@instructor\@empty
\let\@institution\@empty
\let\@collaborators\@empty
\let\@netid\@empty

\newcommand{\PrintTitle}{% Printing the title, first checking if \@title are empty
	{\huge\ifeq{\@title}{\@empty}{}{\@title} \ifeq{\@shorttitle}{\@empty}{}{(\@shorttitle)}}
    \vspace{.5cm}%
}
\newcommand{\PrintAuthor}{%
		\ifeq{\@author}{\@empty}{ % Producing an error if they haven't written their name
			\errmessage{You didn't write your name! Use the "\ author" command to change this.}%
	}{%
            \def\trueprintauthor{Author: & \@author\\}% This is what should be printed usually: "Author: [Author Name]"
			% \ifeq{\@collaborators}{\@empty}{\@author}{\trueprintauthor}% Outputs "[Author Name]" if Collaborators is empty and "Author: [Author Name]" otherwise.
            \trueprintauthor
	}
}
\newcommand{\PrintInstitution}{%
	\ifeq{\@institution}{\@empty}{}{\@institution}
}
\newcommand{\PrintCollaborators}{%
	\ifeq{\@collaborators}{\@empty}{}{Collaborators: & \@collaborators \\}
}
\newcommand{\PrintDate}{Date: & \@date \\}

\renewcommand{\maketitle}{%
	\if@doublespaced % Making the info dump single spaced even if the rest of the document is double spaced
		\singlespacing
	\fi
	\thispagestyle{firstpage} %Only prints the page number, no other header or footer on this page
	\begin{center}
		\PrintTitle \\
		% \begin{tabular}{r l}
		% 	\PrintAuthor
  %           \ifeq{\@institution}{\@empty}{}{Institution: & \PrintInstitution} \\
		% 	\PrintCollaborators
		% 	\PrintDate
		% \end{tabular}
        \@author \\
        \@institution \\
        \@date \\
	\end{center}
	\if@doublespaced % Making the document return to double spaced if that option is set
		\doublespacing
	\fi
}



% THEOREM/EXERCISE COMMANDS


\newtheorem{thm}{Theorem}[section]
\newtheorem{lem}[thm]{Lemma}
\newtheorem{coro}[thm]{Corollary}

\newtheorem*{thmu}{Theorem}
\newtheorem*{lemu}{Lemma}
\newtheorem*{corou}{Corollary}

\newtheorem{manualthmn}{Theorem}
\newenvironment{thmn}[1]{%
  \renewcommand\themanualthmn{#1}%
  \manualthmn
}{\endmanualthmn}

\newtheorem{manuallemn}{Lemma}
\newenvironment{lemn}[1]{%
  \renewcommand\themanuallemn{#1}%
  \manuallemn
}{\endmanuallemn}

\newtheorem{manualcoron}{Corollary}
\newenvironment{coron}[1]{%
  \renewcommand\themanualcoron{#1}%
  \manualcoron
}{\endmanualcoron}

\theoremstyle{definition}

\newtheorem{defn}[thm]{Definition}
\newtheorem*{defnu}{Definition}

\newtheorem{example}[thm]{Example}
\newtheorem*{exampleu}{Example}

\newtheorem{manualdefnn}{Definition}
\newenvironment{defnn}[1]{%
  \renewcommand\themanualdefnn{#1}%
  \manualdefnn
}{\endmanualdefnn}

\newtheorem{manualexamplen}{Example}
\newenvironment{examplen}[1]{%
  \renewcommand\themanualexamplen{#1}%
  \manualexamplen
}{\endmanualexamplen}

\newtheorem{manualexern}{Exercise}
\newenvironment{exern}[1]{%
  \renewcommand\themanualexern{#1}%
  \manualexern
}{\endmanualexern}

\newtheorem{exer}{Exercise}
\newtheorem*{exeru}{Exercise}


\newenvironment{solution}[1][Solution]{\begin{proof}[#1]\let\qed\relax}{\end{proof}}

\renewcommand\qedsymbol{$\blacksquare$}



% INDUCTION ENVIORNMENT


\newenvironment{induction}{
	\vskip 6pt
% 	\noindent\begin{minipage}[t]{\textwidth}
}{
% 	\end{minipage}
}
\newenvironment{basecase}{
	\begin{inductionbox}{Base case}
}{
	\end{inductionbox}
}
\newenvironment{indhyp}{
	\begin{inductionbox}{Induction hypothesis}
}{
	\end{inductionbox}
}
\newenvironment{indstep}{
	\begin{inductionbox}{Induction step}
}{
	\end{inductionbox}
}



\endinput
