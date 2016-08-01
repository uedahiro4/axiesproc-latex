% AXIES 年次大会予稿集用クラスファイル.
% jsarticle, ひいては platex2e が必要です.
% また geometry パッケージを使用します.
%
\ProvidesClass{jsaxiesproc}[2016/08/01]
\LoadClass[a4paper,twocolumn,10pt]{jsarticle}

\usepackage{geometry}

% configuration for geometry
\geometry{top=20mm, bottom=24mm, left=23mm, right=23mm}

% jsarticle 定義部分の上書き
\makeatletter
  % maketitle
  \def\@maketitle{%
    \newpage
    \begin{center}%
       %日本語タイトル
	    {\Large \textbf{\@title} \par}%
       \vskip 9pt
       %日本語著者
       {\large \lineskip .0em
        \begin{tabular}[t]{c}%
          \@author
        \end{tabular} \par}%
       \vskip 9pt
       %日本語所属
       {\normalsize \lineskip .0em
        \begin{tabular}[t]{c}%
          \etitle@affiliation
        \end{tabular} \par}%
      % e-mail address
       \vskip 0.3em
       {\normalsize \lineskip .0em
        \begin{tabular}[t]{c}%
		{\tt \etitle@contactemail}
        \end{tabular} \par}%
      % english title
      \vskip 1.5em
       {\Large \textbf{\etitle@etitle} \par}%
       \vskip 0.5em
       {\large \lineskip .0em
        \begin{tabular}[t]{c}%
          \etitle@eauthor
        \end{tabular} \par}%
       \vskip 0.5em
       {\normalsize\selectfont \lineskip .0em
        \begin{tabular}[t]{c}%
          \etitle@eaffiliation
        \end{tabular} \par}%
      \vskip 0.5em
    \end{center}%
    \par\vskip 1.5em
    \ifvoid\@abstractbox\else\centerline{\box\@abstractbox}\vskip1.5em\fi
    }
  % \title \author は既存のマクロを利用 \@title \author に値がセットされる.
  \newcommand{\etitle@affiliation}{}
  \newcommand{\etitle@contactemail}{}
  \newcommand{\etitle@etitle}{}
  \newcommand{\etitle@eauthor}{}
  \newcommand{\etitle@eaffiliation}{}
  \newcommand{\affiliation}[1]{\renewcommand{\etitle@affiliation}{#1}}
  \newcommand{\contactemail}[1]{\renewcommand{\etitle@contactemail}{#1}}
  \newcommand{\etitle}[1]{\renewcommand{\etitle@etitle}{#1}}
  \newcommand{\eauthor}[1]{\renewcommand{\etitle@eauthor}{#1}}
  \newcommand{\eaffiliation}[1]{\renewcommand{\etitle@eaffiliation}{#1}}
\makeatother

\pagestyle{empty}

% for vim cofiguration
% vim: set fileformat=unix fileencoding=utf8 filetype=tex
