\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{note}[2023/07/01 notes]

\DeclareOption*{
  \PassOptionsToClass{\CurrentOption}{amsart}
}
\ProcessOptions\relax

\LoadClass{amsart}

\RequirePackage{imakeidx}
\makeindex[columns=2, title=Index, intoc]
\newcommand{\indbf}[1]{\textbf{#1}\index{\MakeLowercase{#1}}}


\RequirePackage{xcolor} % Enable coloured elements
\definecolor{mypurple}{HTML}{622567} %%% Purple
\definecolor{myred}{HTML}{D55C19} %%%EssexOrange
\definecolor{myblue}{HTML}{007A87} %%%Seagrass

% For technical reasons, hyperref should be loaded after all other packages

\RequirePackage[colorlinks=true,linkcolor=myblue,citecolor=mypurple,linkbordercolor=red,hyperindex=true,encap]{hyperref}

\RequirePackage[most]{tcolorbox}
 %\newtcbtheorem[number within=section]{mytheo}{My Theorem}{colback=green!5,colframe=green!35!black,fonttitle=\bfseries}{thh}



\RequirePackage{cleveref}
\tcbuselibrary{skins}
\tcbset{breakable,skin=enhanced,separator sign none,description delimiters parenthesis,
defstyle/.style={fonttitle=\bfseries\upshape, theorem style=change apart,enhanced,arc=0mm,outer arc=0mm,
boxrule=0mm,leftrule=1mm,bottomrule=0mm,left=1mm,right=1mm,
titlerule=0mm,toptitle=0mm,bottomtitle=0mm,top=0mm,
colframe=green!50!black,colback=green!5!white,coltitle=green!50!black,
title style={top color=green!10!white,bottom color=green!5!white,
middle color=green!30!white},},
theostyle/.style={fonttitle=\bfseries\upshape, ,
colback=yellow!10!white,colframe=orange!75!black},,examstyle/.style={coltitle=black,fonttitle=\bfseries\upshape,theorem style=change apart, toprule=0mm,
bottomrule=0mm,rightrule=0mm, leftrule=0mm, colback=white!90!black,colframe=white!40!black,title style={top color=black!30!white,bottom color=black!10!white,
middle color=black!30!white},titlerule=0mm},
}
\newtcbtheorem[number within=section,crefname={definition}{definitions}]{Definition}{Definition}{defstyle}{def}
\newtcbtheorem[use counter from=Definition,crefname={theorem}{theorems}]{Theorem}{Theorem}{theostyle}{theo}
\newtcbtheorem[use counter from=Definition,crefname={corollary}{corollaries}]{Corollary}{Corollary}{theostyle}{cor}
\newtcbtheorem[use counter from=Definition,crefname={example}{examples}]{Example}{Example}{examstyle}{exam}
\newtcbtheorem[use counter from=Definition,crefname={proposition}{propositions}]{Proposition}{Proposition}{theostyle}{theo}
\newtcbtheorem[use counter from=Definition,crefname={lemma}{lemmas}]{Lemma}{Lemma}{theostyle}{theo}

\newcommand{\defi}[2]{\begin{Definition}{#1}{#1}{#2}\end{Definition}}
\newcommand{\eg}[2]{\begin{Example}{#1}{#1}{#2}\end{Example}}
\newcommand{\thm}[2]{\begin{Theorem}{#1}{#1}{#2}\end{Theorem}}
\newcommand{\prop}[2]{\begin{Proposition}{#1}{#1}{#2}\end{Proposition}}
\newcommand{\cor}[2]{\begin{Corollary}{#1}{#1}{#2}\end{Corollary}}
\newcommand{\lem}[2]{\begin{Lemma}{#1}{#1}{#2}\end{Lemma}}




\RequirePackage{amssymb}
\RequirePackage{amsmath}
\RequirePackage{fancyhdr}
\RequirePackage{float}
\RequirePackage{amsthm}
\RequirePackage{subcaption}
\RequirePackage{geometry}
\RequirePackage{cases}
\geometry{left=3cm,right=3cm,top=3.2cm,bottom=3.2cm}
\RequirePackage{stmaryrd}
\RequirePackage{wasysym}

\RequirePackage{mathrsfs}


\RequirePackage[scaled=.98]{BOONDOX-uprscr}%%%%%%%%%小写花体
\RequirePackage{BOONDOX-cal}


\RequirePackage{framed}
\RequirePackage{lipsum}
\RequirePackage{tikz}
\usetikzlibrary{cd}
\usetikzlibrary{arrows.meta}%画箭头，并非必需
\usetikzlibrary{commutative-diagrams}%交换图
\RequirePackage[all]{xy}
\RequirePackage{hyperref}

\linespread{1.4}


\RequirePackage{etoc}% for mini toc


%%%%%%%%%%%%%
%%%宏定义%%%%%
%====== 字母========
\def\d{\mathrm{d}}

\def\aa{\alpha}
\def\bb{\beta}
\def\ss{\sigma}
\def\ee{\epsilon}
\def\O{\mathcal O}
\def\dd{\Delta}
\def\t{\theta}
\def\ff{\varphi}
\def\F{\mathbb F}
\newcommand{\A}{\mathscr{A}}

\def\T{\mathcal T}
\def\B{\mathcal{B}}
\def\P{\mathscr{P}}
\def\M{\mathscr{M}}

\newcommand{\R}{\mathbb{R}}
\newcommand{\Rn}{\mathbb{R}^n}
\newcommand{\Z}{\mathbb{Z}}
\newcommand{\N}{\mathbb{N}}

\def\k{\mathbb K}
\def\Q{\mathbb Q}
\def\C{\mathbb C}
\def\K{\mathbb K}
\def\zz{\mathbb Z}
\def\E{\mathbb E}
\def\D{\mathbb D}
%===== 函数 ========
\def\p{\partial}
\def\xb{\text{Im}}
\def\sb{\text{Re}}
\def\exp{\text{exp}}
\def\res{\text{Res}}\def\ls#1{\text{Res}\yk{f;#1}}
\def\ch{\text{Char}}
\def\tr{\text{Tr}}
\def\nb{\text{Int}}
\def\cl{\text{Cl}}
\def\id{\text{id}}
\def\ext{\text{Ext}}
\def\b{\overline}
\def\au{\text{Aut}}
\def\Hom{\text{Hom}}
\def\End{\text{End}}
\def\Mat{\text{Mat}}
\def\ker{\text{Ker}}
\def\im{\text{Im}}
\def\Iso{\text{Isom}}
\def\rad{\text{Rad}}
\def\sym{\text{Sym}}
\def\oo{\Omega}
\def\abalg{\textsf{AbAlg}}
\def\alg{\textsf{Alg}}
%======= 二元关系 =========
\newcommand{\wq}{\infty}
\newcommand{\st}{\text{ s.t. }}
\def\TO{\Rightarrow}
\def\kj{\varnothing}
\def\sy{\subset}
\def\bh{\supset}
\def\x{\times}
\def\|{\big|}
\def\yz{\rightrightarrows}
\def\ot{\otimes}
\def\od{\ff\odot\psi}
\def\inc{\hookrightarrow}
\def\ox{\otimes}
%===== 括号 ==========
\def\qz#1{\left\lfloor#1\right\rfloor}
\def\kh#1{\left\langle#1\right\rangle}
\def\hk#1{\left\{#1\right\}}
\def\yk#1{\left(#1\right)}
\def\fk#1{\left[#1\right]}

%======= 其它 =========
\def\sl#1{{\noindent\color{blue}{Solution\ #1}}}
\renewcommand{\geq}{\geqslant}
\renewcommand{\leq}{\leqslant}

%%%%%常用环境%%%%
\newcommand{\jz}[1]{\begin{pmatrix}#1\end{pmatrix}}
\newcommand{\gs}[1]{\begin{align*}#1\end{align*}}
\renewcommand{\proofname}{\bf{Proof}}
\newcommand{\pff}[1]{\begin{proof}#1\end{proof}}
%%%%%%小节数%%%%%
\def\bt#1{  \tcbset{enhanced,notitle,colframe=Black!30!White,colback=Black!30!White}  \begin{tcolorbox}[fuzzy shadow={-1.6mm}{1.6mm}{0mm}{0.3mm}{white!90!White},fuzzy shadow={0.6mm}{-0.6mm}{0mm}{0.3mm}{fill=black!90!White}]  \textcolor{Black}{\centerline{\large{\bf{#1}}}}  \end{tcolorbox}  }

%%%%%%题目%%%%%%%%%%%%%%%%%%
\newcommand{\ti}[2]{\begin{tcolorbox}[breakable,colback=Black!10!White,colframe=Black!50!,title=\bf{Exercise}\ #1]
    #2
    \end{tcolorbox}
    }

%%%%%%解答%%%%%%%%%%%
  \renewcommand{\j}[1]{
    \begin{tcolorbox}[breakable,colback=White,colframe=Black!75!,before upper={\parindent15pt}]    \begin{proof}#1\end{proof}    \end{tcolorbox}    }

%%%%%%定理%%%%%%%%%
    \newcommand{\rmk}[1]{\textcolor{blue}{\textbf{Remark: }}{\small{#1}} }


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%=================标题设置 ===================%
% =============== Title Style ===============
%\RequirePackage{titling} % Allows custom title configuration
    
%\newcommand{\HorRule}{\color{Black}\rule{\linewidth}{2pt}} % Defines the gold horizontal rule around the title

%\pretitle{\centering\vspace{-100pt} % Move the entire title section up\noindent\HorRule\vspace{-5pt} % Horizontal rule before the title\fontsize{30}{36}\usefont{OT1}{pzc}{mb}{it}\selectfont\textcolor{Black} % Text colour for the title and author(s)}
%\posttitle{\par\noindent\vskip 10pt} % Whitespace under the title

%\preauthor{\centering\noindent\fontsize{15}{0}\usefont{U}{xl}{n}{GoudyIn\selectfont\textcolor{black}}\postauthor{\par\vskip 5pt}

%\predate{\centering\noindent\fontsize{15}{0}\usefont{U}{xl}{n}{GoudyIn}\selectfont\textcolor{black}} % Anything that will appear before \author is printed
%\postdate{\par\noindent\HorRule}
%==================================================