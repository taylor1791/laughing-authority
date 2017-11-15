% This class is meant to mimic The aesthetic of official D&D content for the
% purpose of creating personal reference sheets for campaigns.
\newcommand{\dmversion}{v0.0.0}

\LoadClass[9pt]{extarticle}

\usepackage{xifthen}

\usepackage[top=0.5in, left=0.8in, bottom=1.0in, right=0.8in]{geometry}

\usepackage{fancyhdr}
  \pagestyle{fancy}
  \renewcommand{\headrulewidth}{0pt}
  \setlength{\footskip}{30pt} % 1.5in * 72 - font_size(6) - 0.5in * 72
  \fancyhf{}
  \lfoot{\color{teak} \fontsize{6}{6} \mrseaves DM Class Version: \dmversion \qquad Document Version: \theversion}
  \rfoot{\color{teak} \fontsize{6}{6} \scalasans Taylor Everding}

\usepackage{multicol}
  \setlength\columnsep{24pt}
  \newenvironment{cols}
    {\begin{multicols}{2}
      [\maketitle\thispagestyle{fancy}]\noindent}
    {\end{multicols}}

  \usepackage{fontspec}
    \directlua{
      function bookmania ()
        tex.print("Path = /Users/teverding/src/dming/texmf/fonts/bookmania/,")
        tex.print("UprightFont = bookmania-regular.otf,")
        tex.print("FontFace = {m}{it}{bookmania-regular-italic.otf},")
        tex.print("FontFace = {bx}{n}{bookmania-bold.otf},")
        tex.print("FontFace = {bx}{it}{bookmania-bold-italic.otf},")
        tex.print("FontFace = {l}{n}{bookmania-light.otf},")
        tex.print("FontFace = {l}{it}{bookmania-light-italic.otf},")
        tex.print("FontFace = {sb}{n}{bookmania-semibold.otf},")
        tex.print("FontFace = {sb}{it}{bookmania-semibold-italic.otf},")
        tex.print("FontFace = {eb}{n}{bookmania-extrabold.otf},")
        tex.print("FontFace = {eb}{it}{bookmania-extrabold-italic.otf},")
      end

     function mrseaves ()
       tex.print("Path = /Users/teverding/src/dming/texmf/fonts/mrs-eaves/,")
       tex.print("UprightFont = mrs-eaves-regular.ttf,")
       tex.print("FontFace = {m}{it}{mrs-eaves-regular-italic.ttf},")
       tex.print("FontFace = {bx}{n}{mrs-eaves-bold.ttf},")
       tex.print("FontFace = {bx}{it}{mrs-eaves-bold-italic.ttf},")
       tex.print("FontFace = {m}{li}{mrs-eaves-regular-lining.ttf},")
       tex.print("FontFace = {m}{sc}{mrs-eaves-regular-small-caps.ttf},") % Built in
       tex.print("FontFace = {m}{pc}{mrs-eaves-regular-petite-caps.ttf},")
       tex.print("FontFace = {m}{as}{mrs-eaves-regular-all-small-caps.ttf},")
       tex.print("FontFace = {m}{ap}{mrs-eaves-regular-all-petite-caps.ttf},")
     end

     function scalasans ()
       tex.print("Path = /Users/teverding/src/dming/texmf/fonts/scala-sans/,")
       tex.print("UprightFont = scala-sans-regular.ttf,")
       tex.print("FontFace = {m}{it}{scala-sans-regular-italic.ttf},")
       tex.print("FontFace = {m}{c}{scala-sans-regular-condensed.ttf},")
       tex.print("FontFace = {l}{n}{scala-sans-light.ttf},")
       tex.print("FontFace = {l}{it}{scala-sans-light-italic.ttf},")
       tex.print("FontFace = {bx}{n}{scala-sans-bold.ttf},")
       tex.print("FontFace = {bx}{it}{scala-sans-bold-italic.ttf},")
       tex.print("FontFace = {bx}{c}{scala-sans-bold-condensed.ttf},")
       tex.print("FontFace = {eb}{n}{scala-sans-extrabold.ttf},")
       tex.print("FontFace = {eb}{it}{scala-sans-extrabold-italic.ttf},")
       tex.print("Ligatures = TeX,")
       tex.print("RawFeature = +lnum,")
     end
   }

   \linespread{1.22}
   \setmainfont{Bookmania}[\directlua{bookmania()}]
   \newfontfamily\bookmania{Bookmania}[\directlua{bookmania()}]
   \newfontfamily\mrseaves{MrsEaves}[\directlua{mrseaves()}]
   \newfontfamily\scalasans{ScalaSans}[\directlua{scalasans()}]

  \usepackage[table]{xcolor}
    \definecolor{redwood}{HTML}{58160D}     % Titles & RP box outline
    \definecolor{laser}{HTML}{C9AC69}       % Title Rule
    \definecolor{beryl_green}{HTML}{E0E4C0} % Content boxes & Tables
    \definecolor{linen}{HTML}{FBF7EC}       % RP Box
    \definecolor{teak}{HTML}{B89A67}        % Footer

    \rowcolors{2}{white}{beryl_green}

\usepackage{titling}
  \directlua{
    function title(size)
      tex.print("\string\\fontsize{" .. size .. "}{" .. size .. "}")
      tex.print("\string\\color{redwood}")
      tex.print("\string\\fontshape{sc}")
      tex.print("\string\\mrseaves")
      tex.print("\string\\selectfont")
    end
  }

  \setlength{\droptitle}{-5em}
  \pretitle{\begin{flushleft}\directlua{title(24)}}
  \posttitle{\end{flushleft}\vskip -5pt}
  \preauthor{}
  \author{}
  \postauthor{}
  \predate{}
  \date{}
  \postdate{}

\usepackage{titlesec}
  \titleformat{\section}
    {\directlua{title(20)}}{}{0pt}{}
  \titleformat{\subsection}
    {\directlua{title(15)}}{}{0pt}{}
    [\titleline{\color{laser}\titlerule[1.5pt]}]
  \titleformat{\subsubsection}
    {\directlua{title(12)}}{}{0pt}{}
  \titleformat{\paragraph}[runin]
    {\fontseries{bx}\fontshape{it}\selectfont}{}{0pt}{}[.]
  \titleformat{\subparagraph}[runin]
    {\fontshape{it}\selectfont}{}{0pt}{}[.]

  \titlespacing*{\section}{0pt}{4pt}{0pt}
  \titlespacing*{\subsection}{0pt}{4pt}{4pt}
  \titlespacing*{\subsubsection}{0pt}{4pt}{0pt}
  \titlespacing{\paragraph}{\parindent}{0pt}{\wordsep}
  \titlespacing{\subparagraph}{\parindent}{0pt}{\wordsep}

  \newcommand{\killsectionspace}{\vspace{-21pt}}
  \newcommand{\killsubsectionspace}{\vspace{-19pt}}
  \newcommand{\killsubsubsectionspace}{\vspace{-17pt}}

  \usepackage{enumitem}
    \SetEnumitemKey{twocol}{
      before=\setlength\multicolsep{4pt}\begin{multicols}{2},
      after=\end{multicols}
    }

    \setlist{noitemsep, leftmargin=0.5\labelwidth, topsep=4pt}
    \setlist[itemize]{label=\bfseries\textbullet}
    \setlist[enumerate]{label=\bfseries\arabic*.}

  \usepackage{tcolorbox}
    \tcbset{
      colback=beryl_green,
      sharp corners,
      frame empty,
      left=4pt, right=4pt, top=4pt, bottom=4pt,
      before skip=4pt, after skip=4pt
    }
    \newenvironment{content}[1][]
    {\begin{tcolorbox}
      \scalasans{}
      \ifthenelse{\isempty{#1}}
        {}
        {\fontsize{10}{10} \textbf{#1} \\}
      \fontsize{8}{8} }
    {\end{tcolorbox}}

  \usepackage{tabularx}
    \newenvironment{tabularz}[1][]
    {\vspace{4pt}\scalasans{}\noindent
     \ifthenelse{\isempty{#1}}
       {}
       {{\fontshape{sc}\selectfont\fontsize{11}{11} \textbf{#1}} \\[4pt]}
     \fontsize{8}{8}}
    {\vspace{4pt}}

    \newcommand{\scalanum}[1]{\fontshape{sc}\selectfont#1}


  % Custom commands & environments
    \newcommand{\calc}[2]{\begin{center}
      {\scalasans{} \textbf{#1} = #2}
      \end{center}
    }

% Stat Blocks & spell
% Stat blocks from Monster Manual
% Stat blocks from 10 clever kobolds
