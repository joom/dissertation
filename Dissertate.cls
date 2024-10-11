% -------------------------------------------------------------------
%  @LaTeX-class-file{
%     filename        = "Dissertate.cls",
%     version         = "1.0",
%     date            = "24 January 2014",
%     codetable       = "ISO/ASCII",
%     keywords        = "LaTeX, Dissertate",
%     supported       = "send email to suchow@post.harvard.edu",
%     docstring       = "Class for a dissertation."
% --------------------------------------------------------------------

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{Dissertate}[2014/01/24 v1.0 Dissertate Class]
\LoadClass[12pt, oneside, letterpaper]{book}

% some definitions
\def\degreeyear#1{\gdef\@degreeyear{#1}}
\def\degreemonth#1{\gdef\@degreemonth{#1}}
\def\degree#1{\gdef\@degree{#1}}
\def\advisor#1{\gdef\@advisor{#1}}
\def\department#1{\gdef\@department{#1}}
\def\field#1{\gdef\@field{#1}}
\def\university#1{\gdef\@university{#1}}
\def\universitycity#1{\gdef\@universitycity{#1}}
\def\universitystate#1{\gdef\@universitystate{#1}}
\def\programname#1{\gdef\@programname{#1}}
\def\pdOneName#1{\gdef\@pdOneName{#1}}
\def\pdOneSchool#1{\gdef\@pdOneSchool{#1}}
\def\pdOneYear#1{\gdef\@pdOneYear{#1}}
\def\pdTwoName#1{\gdef\@pdTwoName{#1}}
\def\pdTwoSchool#1{\gdef\@pdTwoSchool{#1}}
\def\pdTwoYear#1{\gdef\@pdTwoYear{#1}}

\RequirePackage[12pt]{moresize}
\RequirePackage{xcolor}
\usepackage[backref=page,hyperfootnotes=false]{hyperref}
% \backrefsetup{verbose=false}
\renewcommand*{\backref}[1]{}% for backref < 1.33 necessary
% \renewcommand\backrefsep{$, $}
% \renewcommand\backreftwosep{$ and~$}
% \renewcommand\backreflastsep{$, and~$}
% \renewcommand*{\backrefalt}[4]{%
% \ifcase #1 %
% (no citations)%
% \or
% (cited in page $#2$)%
% \else
% (cited in pages $#2$)%
% \fi
% }
\renewcommand*{\backrefalt}[4]{%
\ifcase #1 %
(no citations)%
\or
(cited in page #2)%
\else
(cited in pages #2)%
\fi
}
% \usepackage{footnotebackref}
\RequirePackage[tiny, md, sc]{titlesec}
\setlength{\headheight}{15pt}

\usepackage{glossaries}
\makeglossaries

\pagestyle{plain}
\RequirePackage{titling}
\RequirePackage[palatino]{quotchap}

\RequirePackage{kvoptions}
\DeclareStringOption{School}[]
\ProcessKeyvalOptions*
\RequirePackage{packages/\Dissertate@School/style}

\RequirePackage{graphicx}
\RequirePackage{amssymb}
\RequirePackage{lettrine}
\RequirePackage[comma,numbers,square]{natbib}
\renewcommand{\bibnumfmt}[1]{[#1]}
\newcommand{\citeay}[1]{\citeauthor{#1} (\citeyear{#1}) \citep{#1}}
\newcommand{\citety}[2]{#1 (\citeyear{#2})~\citep{#2}}
\RequirePackage[width=5.75in, letterpaper]{geometry}
\RequirePackage{fancyhdr}

\usepackage[titletoc]{appendix}
\renewcommand{\setthesection}{\arabic{chapter}.A\arabic{section}}

\RequirePackage{setspace}
\RequirePackage{booktabs}
\RequirePackage[tight,nice]{units}
% \RequirePackage{verbatim}
\setcounter{tocdepth}{2}

\RequirePackage{url}
\usepackage[titles]{tocloft}
\renewcommand{\cftsecleader}{\cftdotfill{\cftdotsep}}
\renewcommand{\cftchapfont}{\normalsize \scshape}
% \usepackage{fixltx2e}
\usepackage{ragged2e}

\renewcommand\bibname{References}
\renewcommand\listfigurename{Listing of figures}
% \RaggedRight % aligns text to the left instead of justified

\parindent 12pt
\RequirePackage{mathspec}



\widowpenalty=300
\clubpenalty=300

% \setmathsfont(Digits,Latin,Greek)[Numbers={Proportional},SizeFeatures={{Size=-8, OpticalSize=8},{Size= 8-, OpticalSize=12}},]{EB Garamond}
\setmathrm{EB Garamond}
\defaultfontfeatures{Mapping=tex-text}
\newfontfamily{\smallcaps}[RawFeature={+c2sc,+scmp}]{EB Garamond}
\setromanfont[Numbers=OldStyle, Ligatures={Common, TeX}, Scale=1.0]{EB Garamond}
\setsansfont[Scale=MatchLowercase, BoldFont={Lato Bold}]{Lato Regular}

% \setmathsfont(Digits,Latin,Greek)[Numbers={Proportional},SizeFeatures={{Size=-7, OpticalSize=7},{Size= 8-, OpticalSize=11}},]{TeX Gyre Pagella}
% \setmathrm{TeX Gyre Pagella}
% \defaultfontfeatures{Mapping=tex-text}
% \newfontfamily{\smallcaps}[RawFeature={+c2sc,+scmp}]{TeX Gyre Pagella}
% \setromanfont[Numbers=OldStyle, Ligatures={Common, TeX}, Scale=0.9]{TeX Gyre Pagella}
% \setsansfont[Scale=MatchLowercase, BoldFont={Lato Bold}]{Lato Regular}


\defaultfontfeatures{}
\setmonofont{Iosevka}[
    Ligatures={NoCommon, NoRequired,
    NoContextual,
    NoHistoric,
    NoDiscretionary, TeX},
    Path=./fonts/Iosevka/,
    % Scale=0.85,
    Scale=MatchLowercase,
    Extension = .ttf,
    UprightFont=*-Regular,
    BoldFont=*-Bold,
    ItalicFont=*-Italic,
    BoldItalicFont=*-BoldItalic
    ]
\urlstyle{tt}

% \RequirePackage[libertine]{newtxmath}
% \RequirePackage[tt=false]{libertine}
% \setmainfont{TeX Gyre Pagella}[
%   Numbers=OldStyle,
%   Scale=0.9
% ]
% \setmonofont[Scale=0.9]{Iosevka}
% \setmonofont[StylisticSet=3]{inconsolata}

% \RequirePackage[labelfont={bf,sf,footnotesize,singlespacing},
% 								textfont={sf,footnotesize,singlespacing},
% 								justification={justified,RaggedRight},
% 								singlelinecheck=false,
% 								margin=0pt,
% 								figurewithin=chapter,
% 								tablewithin=chapter]{caption}
\RequirePackage[labelfont={bf}]{caption}



% \renewcommand{\thefootnote}{\fnsymbol{footnote}} % changes footnote to symbols

%\onehalfspacing
%\doublespacing

% an environment for paragraph-style section
\providecommand\newthought[1]{%
   \addvspace{1.0\baselineskip plus 0.5ex minus 0.2ex}%
   \noindent\textsc{#1}%
}

% Align reference numbers so that they do not cause an indent
\newlength\mybibindent
\setlength\mybibindent{0pt}
\makeatletter
\renewenvironment{thebibliography}[1]
    {\chapter*{\bibname}%
     \@mkboth{\MakeUppercase\bibname}{\MakeUppercase\bibname}%
     \list{\@biblabel{\@arabic\c@enumiv}}
          {\settowidth\labelwidth{\@biblabel{999}}
           \leftmargin\labelwidth
            \advance\leftmargin\dimexpr\labelsep+\mybibindent\relax\itemindent-\mybibindent
           \@openbib@code
           \usecounter{enumiv}
           \let\p@enumiv\@empty
           \renewcommand\theenumiv{\@arabic\c@enumiv}}
     \sloppy
     \clubpenalty4000
     \@clubpenalty \clubpenalty
     \widowpenalty4000%
     \sfcode`\.\@m}
    {\def\@noitemerr
      {\@latex@warning{Empty `thebibliography' environment}}
     \endlist}
\makeatother

% \pagenumbering{arabic}