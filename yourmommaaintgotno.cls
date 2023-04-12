\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{yourmommaaintgotno}[2023/04/12 Problem set Class]

% load in the main exam class with appropriate options
% \LoadClass[12pt,a4paper]{exam} 

%\RequirePackage{ifthen,amsmath,amssymb,amsthm,bm,graphicx,color}
\RequirePackage[top=3cm, bottom=4cm, left=3.5cm, right=3.5cm]{geometry}
\RequirePackage{amsmath}
\RequirePackage{amsthm}
\RequirePackage{environ}
\RequirePackage[framemethod=TikZ]{mdframed}
\RequirePackage{amsfonts}
\RequirePackage{fancyhdr}
%% %\RequirePackage{listings}

%\usepackage{color}
%% %\usepackage{comment}
%% %\usepackage{graphicx}
%% %\usepackage{float}
%% %\usepackage{mathrsfs}
%% %\usepackage[]{unicode-math}
%% %\usepackage[math-style=ISO]{unicode-math}
%% %\setmathfont{TeX Gyre Termes Math}
%% %%% %\usepackage{lastpage}
%% %\usepackage[dvipsnames]{xcolor}
%% %\usepackage{enumerate}
%% %\usepackage[shortlabels]{enumitem}
%% %\usepackage{fancyhdr}
%% %\usepackage{indentfirst}
%% %%% %\usepackage{sectsty}
%% %\usepackage{thmtools}
%% %\usepackage{shadethm}
%% %\usepackage{hyperref}
%% %\usepackage{setspace}
%% %\hypersetup{
%% %    colorlinks=true,
%% %    linkcolor=blue,
%% %    filecolor=magenta,      
%% %    urlcolor=blue,
%% %}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\LoadClass[10pt, a4paper]{article}

%% %%increase the printed page area width
%% %\extrawidth{0.5cm}
%% %
%% %%increase header space on title page only
%% %\extraheadheight[1.5cm]{0cm}
%% %%Environment setup
\mdfsetup{skipabove=\topskip,skipbelow=\topskip}
%% %
\mdfdefinestyle{theoremstyle}{%
linecolor=black,linewidth=1pt,%
frametitlerule=true,%
frametitlebackgroundcolor=gray!20,
innertopmargin=\topskip,
}
\mdtheorem[style=theoremstyle]{Problem}{Problem}
\newenvironment{Solution}{
  \large
} {
  \newpage
}

\newenvironment{problem}[1]{
  \begin{Problem}
  #1
  \end{Problem}
  \begin{Solution}
}
{
  \end{Solution}
}
%% %
%% %\newenvironment{smallquote}{
%% %  \small\begin{quotation}
%% %  }
%% %{
%% %  \end{quotation}
%% %}
%% %
%% %\definecolor{codegreen}{rgb}{0,0.6,0}
%% %\definecolor{codegray}{rgb}{0.5,0.5,0.5}
%% %\definecolor{codepurple}{rgb}{0.58,0,0.82}
%% %\definecolor{backcolour}{rgb}{0.95,0.95,0.92}
%% %
%% %\lstdefinestyle{mystyle}{
%% %    backgroundcolor=\color{backcolour},   
%% %    commentstyle=\color{codegreen},
%% %    keywordstyle=\color{magenta},
%% %    numberstyle=\tiny\color{codegray},
%% %    stringstyle=\color{codepurple},
%% %    basicstyle=\ttfamily\footnotesize,
%% %    breakatwhitespace=false,         
%% %    breaklines=true,                 
%% %    captionpos=b,                    
%% %    keepspaces=true,                 
%% %    numbers=left,                    
%% %    numbersep=5pt,                  
%% %    showspaces=false,                
%% %    showstringspaces=false,
%% %    showtabs=false,                  
%% %    tabsize=2
%% %}
%% %% For python code presetation using mystyle above
%% %\lstset{style=mystyle}
%% %%% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% %%% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% %%% %%Fill in the appropriate information below
\newcommand{\norm}[1]{\left\lVert#1\right\rVert}     
\newcommand\CourseName{Stochastic Processes} % <-- course name   
\newcommand\CourseID{Math 632} % <-- course name   
\newcommand\hwnumber{1}                          % <-- homework number
\newcommand\Information{Guy Matz}                % <-- personal information
%% %%% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% %%% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% %%% %%Page setup
\pagestyle{fancy}
\headheight 40pt
\lhead{\Information\\\CourseID - \CourseName\\\today}
\rhead{\includegraphics[width=0.9cm]{bucky.png}}
\lfoot{}
\pagenumbering{arabic}
\cfoot{\small\thepage}
\rfoot{}
\headsep 1.2em
\renewcommand{\baselinestretch}{1.25}
%% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% %%Add new commands here
\renewcommand{\labelenumi}{\alph{enumi})}
\newcommand{\Z}{\mathbb Z}
\newcommand{\R}{\mathbb R}
\newcommand{\Q}{\mathbb Q}
\newcommand{\NN}{\mathbb N}
\newcommand{\PP}{\mathbb P}
\DeclareMathOperator{\Mod}{Mod} 
%% %\renewcommand\lstlistingname{Algorithm}
%% %\renewcommand\lstlistlistingname{Algorithms}
%% %\def\lstlistingautorefname{Alg.}
\newtheorem*{theorem}{Theorem}
%% %\newtheorem*{lemma}{Lemma}
%% %\newtheorem{case}{Case}
%% %\newcommand{\assign}{:=}
%% %\newcommand{\infixiff}{\text{ iff }}
%% %\newcommand{\nobracket}{}
%% %\newcommand{\backassign}{=:}
%% %\newcommand{\tmmathbf}[1]{\ensuremath{\boldsymbol{#1}}}
%% %\newcommand{\tmop}[1]{\ensuremath{\operatorname{#1}}}
%% %\newcommand{\tmtextbf}[1]{\text{{\bfseries{#1}}}}
%% %\newcommand{\tmtextit}[1]{\text{{\itshape{#1}}}}
%% %
%% %%% %\catcode`\<=\active \def<{
%% %%% %\fontencoding{T1}\selectfont\symbol{60}\fontencoding{\encodingdefault}}
%% %%% %\catcode`\>=\active \def>{
%% %%% %\fontencoding{T1}\selectfont\symbol{62}\fontencoding{\encodingdefault}}
%% %%% %\catcode`\<=\active \def<{
%% %%% %\fontencoding{T1}\selectfont\symbol{60}\fontencoding{\encodingdefault}}
%% %
%% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% %%Begin now!
