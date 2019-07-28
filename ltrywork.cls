\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{ltrywork}[2019/07/27 V0.1 Written by Mizuki Koyanagi]

\LoadClass[UTF8,twoside,11pt]{ctexrep}

\RequirePackage[top=3cm,bottom=3cm,left=3cm,right=2cm]{geometry} % 页面边框大小
\RequirePackage{amsmath,amsthm,amssymb,amsfonts} % 数学公式环境
\RequirePackage{indentfirst} % 保证首行缩进
\RequirePackage{multicol} % 多栏排版
    \setlength\columnsep{15pt} % 栏间距离设置

%%% 行距设置 %%%
\linespread{1.5}

%% 设计文章作者样式 %%
\newcommand{\writer}[1]{{\hfill {文\hspace{5pt}\vline\hspace{5pt}{#1}\vspace{15pt}}}}
%% 设计文中小标题样式 %%
\newcommand{\smalltitle}[1]{\vspace{10pt}\centerline{\Large\fangsong #1}\vspace{10pt}}

%%% 页眉页脚设计 %%%
\RequirePackage{fancyhdr}
\RequirePackage{xcolor}
\pagestyle{fancy}
\fancyhf{}
\fancyhead[LE,RO]{}
\fancyhead[LE]{\bfseries{\sffamily\thepage}\hspace{8pt}\vline\hspace{8pt}}
\fancyhead[RO]{\textbf{\color{gray}\bookname}\hspace{8pt}\vline\hspace{8pt}\bfseries{\sffamily\thepage}}
\renewcommand{\headrulewidth}{0pt} % 页眉修饰线调整
\fancypagestyle{plain}{ % 重新定义plain样式
     \fancyhf{}
     \fancyfoot[LO,RE]{}
     \fancyfoot[LE,RO]{\bfseries\thepage}
     \renewcommand{\headrulewidth}{0pt}
}

%%% 章节标题设计 %%%
\RequirePackage{titlesec} % 标题样式设计
\titleformat{\chapter}[block]
{\ifodd\value{page} \hfill % 判断是否为奇数
\else \relax \fi
\fontsize{24pt}{\baselineskip}\bfseries}
{}
{0pt}
{}
[\begin{minipage}{\linewidth}
    \ifodd\value{page} \hfill % 判断是否为奇数
    \else \relax \fi
    \fontsize{16pt}{\baselineskip}\kaishu \subtitlename
\end{minipage}]
\titlespacing*{\chapter}{0pt}{5pt}{80pt} 

%%% 章节信息 %%%
\newcommand{\articleinfo}[3][]{\def\subtitlename{#1}\chapter*{#2}\writer{#3}\addcontentsline{toc}{chapter}{#2}}

