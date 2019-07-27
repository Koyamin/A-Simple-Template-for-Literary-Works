# A-Simple-Template-for-Literary-Works

## What's this?

这是一个简单的、为了排版文学作品集而设计的 LaTeX 模板。

本模板目前支持 XeLaTeX 引擎，字符编码仅支持 UTF-8。

## Why it's worth being used?

它的优势与 TeX 排版系统的优势相同，即内容与格式分离。这使得作者与排版者能更加专注于内容本身而非后期排版；与此同时，这也使得排版的难度有所降低。

## How to use it?

### 各文件（或文件夹）的使用

* `main.tex`
  
  此文件是本模板的核心，控制着整个项目的结构。在此文件中，你需要修改的只有文章正文的各篇文章所在的`.tex`文件（在演示中是 `example.tex`，...），它们被建议放置在 `~/body/` 中。当然，你可以随意地修改这些文件的名字和内容并进行删减与增补。语法可见本文件中的示例。

* `~/body/`

  此文件夹中用来存放排版过的文章，详细设置请参照 `~/body/example.tex` 。

* `~/settings/settings.tex`

  此文件用来载入宏包并进行各种格式设置。请不要轻易修改，或删除本文件中的任何内容，特别是不要修改宏包的加载顺序，除非你真的知道你在做什么。

* `~/contents/contents.tex`

  此文件用来设置目录。请不要轻易修改，除非你真的知道你在做什么。

### 各个文件的配置

* `main.tex` 中可修改的内容

  1. `\documentclass[UTF8,a5paper,twoside,10pt]{ctexrep}`
  
    这里建议修改的内容有 `a5paper` 和 `10pt` 。其中 `a5paper` 为页面大小设置，可修改为 `b5paper` 、 `a4paper` 等纸张尺寸（具体纸张尺寸的调整方法请使用搜索引擎查询）； `10pt` 指正文的字体大小，可以按照需求修改。
    
  2. `def\nameofbook{书籍名称}`
  
    这里建议修改的内容是花括号内的“书籍名称”，请按照实际情况修改。
  
  3. `\input{./body/example.tex}`
  
    这里导入的是存储在 `~/body/` 文件夹中的文章，请按照需要补充。注意，导入的文档的顺序决定了输出时的文章顺序。

* `~/body/example.tex` 中可修改的内容

  1. 文件名
  
  2. `\chapter*{标题}\writer{作者}`
  
    这里建议修改的内容有 `标题` 和 `作者` 。其中 `标题` 指的是文章标题，请按实际情况修改； `作者` 指的是文章的作者，请按实际情况修改。
    
  3. `\addcontentsline{toc}{chapter}{标题}`
  
    这里建议修改的内容有 `标题` 。其中 `标题` 指的是文章标题，请按实际情况修改。
    
  ## What's it's shortcoming?
  
  本模板太复杂且较为丑陋，未编写 `.sty` 和 `.cls` 文件来简化、美化模板。未来将考虑编写 `.sty` 和 `.cls` 文件来解决这一问题。
  
  ## Software License
  
  使用 [LPPL](https://www.latex-project.org/lppl/lppl-1-3c/) 授权。
