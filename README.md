# A-Simple-Template-for-Literary-Works

这里是下载地址：[下载地址](https://github.com/Koyamin/A-Simple-Template-for-Literary-Works/archive/master.zip)。

预览效果请参见 [example.pdf](https://github.com/Koyamin/A-Simple-Template-for-Literary-Works/blob/master/example.pdf)。

## What's this?

这是一个简单的、为了排版简体中文文学作品集而设计的 LaTeX 模板。

本模板目前支持 XeLaTeX 引擎，字符编码仅支持 UTF-8。

## Why it's worth being used?

它的优势与 TeX 排版系统的优势相同，即内容与格式分离。这使得作者与排版者能更加专注于内容本身而非后期排版；与此同时，这也使得排版的难度有所降低。

## How to use it?

### 各文件（或文件夹）的用途

* `main.tex`
  
  此文件是本模板的核心，控制着整个项目的结构。在此文件中，你需要修改的只有文章正文的各篇文章所在的`.tex`文件（在演示中是 `1.tex`，...），它们被建议放置在 `~/body/` 中。当然，你可以随意地修改这些文件的名字和内容并进行删减与增补。语法可见本文件中的示例。

* `~/body/`

  此文件夹中用来存放排版过的文章，详细设置请参照 `~/body/` 中的 `.tex` 文件。

* `~/contents/contents.tex`

  此文件用来设置目录。请不要轻易修改，除非你真的知道你在做什么。

### 各个文件的配置

* `main.tex` 中可配置的内容

  1. `\documentclass[a5paper]{ltrywork}` （必需项）
  
    此命令中可以修改的内容有 `a5paper` 。其中 `a5paper` 为页面大小设置，可修改为 `b5paper` 、 `a4paper` 等纸张尺寸（具体纸张尺寸的调整方法请使用搜索引擎查询）。
    
  2. `\def\bookname{书籍名称}` （必需项）
  
    此命令中可以修改的内容是花括号内的“书籍名称”，请按照实际情况修改。
  
  3. `\input{./body/example.tex}` （必需项）
  
    此命令导入的是存储在 `~/body/` 文件夹中的文章，请按照需要补充。注意，导入的文档的顺序决定了输出时的文章顺序。

*  `~/body/` 中的 `.tex` 文件中可配置的内容

  1. 文件名（必需项）
  
  2. `\articleinfo[副标题]{标题}{作者}` （必需项）
  
    此命令中可以修改的内容有 `副标题` 、 `标题` 和 `作者` 。其中 `副标题` 指的是文章副标题，可缺省； `标题` 指的是文章标题，请按实际情况修改； `作者` 指的是文章的作者，请按实际情况修改。
    
  3. `\smalltitle{标题}` （非必需项）
  
    此命令中可修改的内容有 `小标题` 。其中 `小标题` 指的是文章中的小标题，请按实际情况添加。
    
## What's it's shortcoming?
  
  本模板可实现的功能不足，有些地方仍不够美观。若有意见或建议，敬请在 [Issue](https://github.com/Koyamin/A-Simple-Template-for-Literary-Works/issues) 中提出，本人将尽最大努力改进。
  
## Acknowledgements
  
* 感谢 [CTeX](http://www.ctex.org/HomePage) 提供了 LaTeX 的中文支持。

## Software License

* 使用 [LPPL](https://github.com/Koyamin/A-Simple-Template-for-Literary-Works/blob/master/LICENSE) 授权。
