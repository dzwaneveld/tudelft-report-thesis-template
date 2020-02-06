% This class provides an unofficial alternative to the original TU Delft 
% template for reports. Visual changes are relatively limited, but the 
% template is simplified and improved with easier customization in mind.
%
% Rewritten template by Daan Zwaneveld. Original template by TU Delft 
% (available here: https://www.tudelft.nl/huisstijl/downloads/).
% 
% This template is available under CC BY-NC 4.0. For more information,
% see https://creativecommons.org/licenses/by-nc/4.0/. No attribution 
% is required in reports created using this template.

%%%%% Setup - Construct the Class with Main Packages %%%%%

%% The class file is based on the default book class
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{layout/tudelft-report}[05-02-2020 v1.2 TU Delft Report Class]
\LoadClass[10pt,oneside]{book}

%% Main packages in the document
\RequirePackage{amsmath}    % Mathematics
\RequirePackage{amssymb}    % Symbols
\RequirePackage{siunitx}    % More functions (e.g. \num{})

\RequirePackage{tabularx}   % Additional functions to tables
\RequirePackage{booktabs}   % Adds more line functionality to tables
\RequirePackage{longtable}  % Lets tables break over page
\RequirePackage{enumitem}   % Customise the list spacing

\RequirePackage{geometry}   % Document geometry
\RequirePackage{fontspec}   % Custom fonts
\RequirePackage{titlesec}   % Custom titles
\RequirePackage{titletoc}   % Custom table of contents
\RequirePackage{fancyhdr}   % Custom header/footer
\RequirePackage[hidelinks]{hyperref} % Improved referencing/links

\RequirePackage{graphicx}   % Adding images
\RequirePackage{float}      % Additional float parameters
\RequirePackage[labelfont=bf,justification=centering,footnotesize]{caption} % Captions
\RequirePackage{subcaption} % More captions
\RequirePackage{xcolor}     % Using colours in documents
\RequirePackage{tikz}       % Create graphic elements

\RequirePackage[bibstyle=apa,citestyle=numeric,sorting=anyvt,doi=false]{biblatex} % Manages bibliography
\RequirePackage{datetime}   % Used in preface for month
\RequirePackage{microtype}  % Refinements towards typographical perfection
\RequirePackage[nottoc]{tocbibind} % Add the lists to the table of contents
\RequirePackage{xspace}     % Useful for spaces after defined macros like \deg

%% All unknown options will be passed to the report class 
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{report}}
\ProcessOptions\relax

%%%%% General Definitions for the Document %%%%%

%% Commands to define the title, author, etc
\renewcommand{\title}[1]{%
    \def\@title{#1}%
    \hypersetup{pdftitle=#1}} % Adds it to metadata

\renewcommand*\author[1]{%
    \def\@author{#1}%
    \hypersetup{pdfauthor=#1}} % Adds it to metadata

\newcommand*\subtitle[1]{\def\@subtitle{#1}}
\newcommand*\coverimage[1]{\def\@cover@image{#1}}
\newcommand\subject[1]{\def\@subject{#1}}

%% Some of the TU Delft house style colours
\definecolor{tudelft-cyan}{cmyk}{1,0,0,0}
\definecolor{tudelft-black}{cmyk}{0,0,0,1}
\definecolor{tudelft-white}{cmyk}{0,0,0,0}

%% Further defining the bibliography
\addbibresource{report.bib} % Specifying the .bib file
\RequireBibliographyStyle{numeric} % Required for numeric style
\setlength\bibitemsep{0.7\itemsep} % More spacing to improve readability

%% Prevent urls running into margins in bibliography
\setcounter{biburlnumpenalty}{7000} 
\setcounter{biburllcpenalty}{7000} 
\setcounter{biburlucpenalty}{7000}

%%%%% Loading all the Fonts %%%%%

%% Adding the various fonts
\setmainfont{Arial}
\setmathsf{Arial}
\setmathtt{Arial}
    
\newfontfamily\tudtitlefamily[
    Path = layout/tudelft/,
    Extension = .ttf%,
    ]{TUDelft-UltraLight}
    
\newfontfamily{\quotefont}{Georgia}

%% Defining commands to be used in layout - slightly redundant, but can be used for global changes
\def\largetitlestyle{\tudtitlefamily}
\def\titlestyle{\normalfont}

%% Changing the quote enviroment to use Georgia
\AtBeginEnvironment{quote}{\quotefont}

%%%%% Some Miscellaneous Settings with Layout/Consistency %%%%%

%% Scaling the margins to be slightly smaller than default (.7)
\geometry{a4paper,hscale=0.75,vscale=0.8}

%% Setting up \autoref 
\def\sectionautorefname{Section}
\def\chapterautorefname{Chapter}
\let\subsectionautorefname\sectionautorefname
\let\subsubsectionautorefname\sectionautorefname

%% Use the Tikz library positioning
\usetikzlibrary{positioning}

%% Used in the preface when defining the date automatically
\newdateformat{monthyeardate}{\monthname[\THEMONTH] \THEYEAR}

%% Reducing white space in lists slightly
\setenumerate{itemsep=-2pt}
\setitemize{itemsep=-2pt}

%%%%% Adjusting the Titles in Text and Table of Contents %%%%%

%% Formatting chapter titles and spacing
\titleformat{\chapter}[display]
    {\flushright\largetitlestyle}
    {\fontsize{96}{96}\selectfont\thechapter}
    {0pt}
    {\Huge\titlestyle}
\titlespacing*{\chapter}{0pt}{0pt}{2\baselineskip}

%% Formatting section titles and spacing
\titleformat{\section}
    {\Large\titlestyle\bfseries}
    {\thesection.\ }
    {0pt}
    {}
\titlespacing*{\section}{0pt}{\baselineskip}{0pt}

%% Formatting subsections titles and spacing
\titleformat{\subsection}
    {\large\titlestyle\bfseries}
    {\thesubsection.\ }
    {0pt}
    {}
\titlespacing*{\subsection}{0pt}{\baselineskip}{0pt}

%% Formatting subsubsections titles and spacing
\titleformat{\subsubsection}
    {\titlestyle\bfseries}
    {}
    {0pt}
    {}
\titlespacing*{\subsubsection}{0pt}{\bigskipamount}{0pt}

%% Changing font and spacing in the table of contents
\dottedcontents{chapter}[1.5em]{\vspace{0.5\baselineskip}\titlestyle\bfseries}{1.5em}{0pc}
\dottedcontents{section}[3.8em]{\titlestyle}{2.3em}{8pt}
\dottedcontents{subsection}[7em]{\titlestyle}{3.2em}{8pt}

%%%%% Adjusting the Header and Footer %%%%%

%% Adding a head rule to pages
\renewcommand*\headrule{%
    {\hrule\@height\headrulewidth\@width\headwidth}%
    \vskip-\headrulewidth}

%% Page style for title pages
\fancypagestyle{plain}{%
    \fancyhf{}
    \renewcommand*\headrulewidth{0pt}
    \fancyfoot[C]{\thepage}}

%% Fancy style for the main matter
\fancypagestyle{mainmatter}{%
    \fancyhf{}
    \fancyhead[R]{\titlestyle\@author~-~\@title}
    \fancyhead[L]{\titlestyle\nouppercase{\rightmark}}
    \fancyfoot[C]{\thepage}}

\pagestyle{mainmatter} % Setting it to default

%%%%% Cover Page %%%%%

\newcommand*\makecover{
    % Clearing the page and removing page number
    \clearpage
    \thispagestyle{empty}
    
    % Defining where everything needs to go
    \begin{tikzpicture}[overlay,remember picture]
    
    \node[above=0,inner sep=0] at (current page.south) {%
        \includegraphics[width=\paperwidth]{\@cover@image}};
    
    \node[rotate=90,below right=4cm and .3cm] at (current page.west) {% 
        \titlestyle\color{white} Delft University of Technology};
    
    \node[above right=0.3cm and 0.6cm] at (current page.south west) {%
        \includegraphics[width=0.35\linewidth]{layout/tudelft/logo-white.pdf}};
    
    \node[below=2cm,fill=tudelft-black,minimum width={\paperwidth},inner ysep=25pt,opacity=0.7,text opacity=1] at (current page.north) {%
        \begin{minipage}{0.9\paperwidth}
            \largetitlestyle\fontsize{50}{50}\selectfont\color{color-title}\@title \\[0.5ex] 
            \titlestyle\fontsize{22}{22}\selectfont\color{white}\@subtitle \\[2.5ex]
            \titlestyle\fontsize{22}{22}\selectfont\color{white}\@subject \\[0.5ex]
            \largetitlestyle\fontsize{24}{24}\selectfont\@author
        \end{minipage}};
    
    \end{tikzpicture}
}