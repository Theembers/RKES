<!DOCTYPE html>
<html><head><meta http-equiv="X-UA-Compatible" content="IE=8" />
<meta http-equiv="Content-Type" content="text/html; charset=unicode">
<!--defaultCSS-->
<title>xtsm</title>




<style type="text/css" id="wiz_todo_style_id" wiz_link_version="01.00.09">.wiz-todo, .wiz-todo-img {width: 16px; height: 16px; cursor: default; padding: 0 10px 0 2px; vertical-align: -10%;-webkit-user-select: none;} .wiz-todo-label { display: inline-block; padding-top: 7px; padding-bottom: 6px; line-height: 1.5;} .wiz-todo-label-checked {  color: #666;} .wiz-todo-label-unchecked {text-decoration: initial;} .wiz-todo-completed-info {padding-left: 44px; display: inline-block; } .wiz-todo-avatar { width:20px; height: 20px; vertical-align: -20%; margin-right:10px; border-radius: 2px;} .wiz-todo-account, .wiz-todo-dt { color: #666; }</style>
<style type="text/css" id="wiz_custom_css">
body
{
    font-family: "Microsoft YaHei UI","Microsoft YaHei",SimSun,"Segoe UI",Tahoma,Helvetica,Sans-Serif,"Microsoft YaHei", Georgia,Helvetica,Arial,sans-serif,宋体, PMingLiU,serif;
    font-size: 10.5pt;
    line-height: 1.5;
}
html, body
{
    
    
}
h1 {
    font-size:1.5em;
    font-weight:bold;
}
h2 {
    font-size:1.4em;
    font-weight:bold;
}
h3 {
    font-size:1.3em;
    font-weight:bold;
}
h4 {
    font-size:1.2em;
    font-weight:bold;
}
h5 {
    font-size:1.1em;
    font-weight:bold;
}
h6 {
    font-size:1.0em;
    font-weight:bold;
}
img {
    border:0;
    max-width: 80%;
    height: auto !important;
}
blockquote {
    margin-top:0px;
    margin-bottom:0px;
}
table {
    border-collapse:collapse;
    border:1px solid #bbbbbb;
}
td {
    border-collapse:collapse;
    border:1px solid #bbbbbb;
}
</style>
</head>

<body  style="">
















<div class="WordSection1">

<p class="MsoNormal" align="center" style="margin-left:12.0pt;mso-para-margin-left:
1.0gd;text-align:center;text-indent:24.0pt">













<font face="Adobe 黑体 Std R"><span lang="EN-US" style="font-size: 14pt; line-height: 150%;"><span data-wiz-span="data-wiz-span" style="font-size: 16pt;">Web</span></span><span style="font-size: 14pt; line-height: 150%;"><span data-wiz-span="data-wiz-span" style="font-size: 16pt;">新闻关键词智能抽取系统</span></span><span data-wiz-span="data-wiz-span" style="font-weight: bold; font-size: 16pt;">&nbsp;</span></font> &nbsp;&nbsp;<br></p></div><div class="WordSection2">

<h1 align="center" style="text-align:center;text-indent:28.1pt"><a name="_Toc416954700"></a><a name="_Toc387513098"><span style="font-size:16.0pt;line-height:150%;font-weight:normal">摘<span lang="EN-US">&nbsp;&nbsp;&nbsp; </span>要</span></a><span lang="EN-US" style="mso-bidi-font-size:10.5pt;line-height:150%;font-family:宋体;
mso-fareast-font-family:黑体;mso-font-kerning:0pt"><o:p></o:p></span></h1>

<p class="MsoNormal" style="text-indent:24.0pt;mso-pagination:widow-orphan"><span style="mso-bidi-font-size:12.0pt;line-height:150%;font-family:宋体;mso-font-kerning:
0pt">关键词抽取技术（<span lang="EN-US">Keywords Extraction</span>）是自然语言处理技术领域具有举足轻重的意义。从人类生活习惯和信息化时代的关系上讲，关键词的意义在于其具有极高的提炼度和代表性，可以帮助我们快速检索、获知信息内容。而从人工智能的领域来讲，关键词更是体现了机器学习自然语言实现真正意义上的人机交互的一个核心技术，帮助机器学习、理解自然语言，实现无差异信息交互。<span lang="EN-US"><o:p></o:p></span></span></p>

<p class="MsoNormal" style="text-indent:24.0pt;mso-pagination:widow-orphan"><span style="mso-bidi-font-size:12.0pt;line-height:150%;font-family:宋体;mso-font-kerning:
0pt">本次论文将着重讲解以“<span lang="EN-US">Web</span>新闻关键词智能抽取系统”为主题的毕业设计作品“<span lang="EN-US">Rosetta Keywords Extraction System</span>”（罗塞塔关键词抽取系统<span lang="EN-US"> RKES</span>）的实施方案、关键词抽取逻辑、系统架构、系统功能以及关于分词等核心算法，并在先有的技术基础与测试评估进行分析，给出作者对于自然语言处理技术的看法与值得进一步深究的意见。<span lang="EN-US"><o:p></o:p></span></span></p>

<p class="MsoNormal" style="text-indent:24.0pt;mso-pagination:widow-orphan"><span lang="EN-US" style="mso-bidi-font-size:12.0pt;line-height:150%;font-family:宋体;
mso-font-kerning:0pt"><o:p>&nbsp;</o:p></span></p>

<p class="MsoNormal" style="text-indent:24.0pt;mso-pagination:widow-orphan"><span style="mso-bidi-font-size:12.0pt;line-height:150%;font-family:宋体;mso-font-kerning:
0pt">关键词：关键词；自然语言处理；抽取；分词算法；罗塞塔关键词抽取系统</span></p><p class="MsoNormal" style="text-indent:24.0pt;mso-pagination:widow-orphan"><span style="mso-bidi-font-size:12.0pt;line-height:150%;font-family:宋体;mso-font-kerning:
0pt"><br></span></p>

<h1 align="center" style="text-align:center;text-indent:32.0pt"><a name="_Toc416954701"></a><a name="_Toc387513099"></a><a name="_Toc199236107"></a><a name="_Toc195428323"></a><a name="_Toc195427934"><span lang="EN-US" style="font-size:16.0pt;line-height:150%;font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:宋体;mso-font-kerning:0pt;font-weight:normal">Abstract</span></a><span lang="EN-US" style="font-size:16.0pt;line-height:150%;font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:宋体;mso-font-kerning:0pt;font-weight:normal"><o:p></o:p></span></h1>

<p class="MsoNormal" align="left" style="text-indent: 24pt;"><span lang="EN-US" style="mso-bidi-font-size:12.0pt;line-height:150%">Keywords are
highly important in the field of natural language processing. First they are very
important in the relation between human life habits and the information age
because of their high degree of refinement and representativeness. They are not
only being helpful in rapid information retrieval but also information
acquirement. Keywords are also essential in the field of artificial
intelligence. They reflect the core technology of the human-computer
interaction through the machine’s natural language learning process which
assist machine learn and comprehend natural language to achieve the ultimate
goal of no difference in information exchanges. This paper will focus on the
web page keywords intelligent extraction system and give a comprehensive
introduction to the RKES(Rosetta Keywords Extraction System) implementation
plan, keywords extraction logic, system architecture, system functions and
segmentation algorithm. Then make further comments on the natural language
processing techniques based on the existing technology and test assessment
analysis.</span></p><p class="MsoNormal" align="left" style="text-indent: 24pt;"><span lang="EN-US" style="mso-bidi-font-size:12.0pt;line-height:150%"><br></span></p>

<p class="MsoNormal" align="left" style="text-indent: 0cm;"><span lang="EN-US" style="mso-bidi-font-size:12.0pt;
line-height:150%">Key Words: keywords; natural language processing; extraction;
segmentation algorithm; RKES<o:p></o:p></span></p>

<p class="MsoNormal" align="left" style="text-indent: 24pt;"><span lang="EN-US" style="mso-bidi-font-size:12.0pt;line-height:150%"><o:p>&nbsp;</o:p></span></p></div>

<h1 align="center" style="text-align:center;text-indent:32.0pt"><a name="_Toc359248198"></a><a name="_Toc416954702"></a><a name="_Toc387513100"></a><a name="_Toc387333440"><span style="font-size:16.0pt;line-height:150%;font-weight:normal">第<span lang="EN-US">1</span>章<span lang="EN-US">&nbsp; </span></span></a><span style="font-size:16.0pt;line-height:150%;font-weight:normal">绪论</span><span lang="EN-US" style="font-size:16.0pt;
line-height:150%;font-weight:normal"><o:p></o:p></span></h1>

<h2><a name="_Toc416954703"></a><a name="_Toc387513101"></a><a name="_Toc387333441"><span lang="EN-US">1.1</span></a>关键词的概念、含义及使用<span lang="EN-US"><o:p></o:p></span></h2>

<p class="MsoNormal" style="text-indent:24.0pt;mso-pagination:widow-orphan"><span style="mso-bidi-font-size:12.0pt;
line-height:150%;font-family:宋体;mso-font-kerning:0pt">我们将从多个层面去解释什么是关键词。<span lang="EN-US"><o:p></o:p></span></span></p>

<p class="MsoNormal" align="left" style="margin-left: 48pt; text-indent: 24pt;"><span lang="EN-US" style="mso-bidi-font-size:12.0pt;line-height:150%;mso-fareast-font-family:&quot;Times New Roman&quot;;
mso-font-kerning:0pt">1.<span style="font-size: 7pt; line-height: normal; font-family: 'Times New Roman';">&nbsp;
</span></span><span style="mso-bidi-font-size:12.0pt;
line-height:150%;font-family:宋体;mso-font-kerning:0pt">从历史的角度讲，<span lang="EN-US">“</span>关键词<span lang="EN-US">”</span>（<span lang="EN-US">keywords</span>）这一概念最早起源于图书馆学，主要用与图书馆分类、管理、检索书籍的依据。而这一理念也被继承并潜移默化了，我们在现在的日常生活中管理一些文本文件、数据、记录等那些可以被字符数据记载的信息上仍然会依照这样一个逻辑去做。而这些潜在的思维方式就是<span lang="EN-US">“</span>这些告诉了我们什么？<span lang="EN-US">”</span>这种方式的背后实质上就是在提炼其中的核心内容，再根据这些内容的相似度进行归纳整理。这就是我们生活中所使用到的<span lang="EN-US">“</span>关键词<span lang="EN-US">”</span>。它能帮助我们快速的获取信息、管理信息、使用信息。<span lang="EN-US"><o:p></o:p></span></span></p>

<p class="MsoNormal" style="margin-left:48.0pt;text-indent:24.0pt;mso-pagination:
widow-orphan;mso-list:l12 level1 lfo13"><span lang="EN-US" style="mso-bidi-font-size:12.0pt;line-height:150%;mso-fareast-font-family:
&quot;Times New Roman&quot;;mso-font-kerning:0pt">2.<span style="font-size: 7pt; line-height: normal; font-family: 'Times New Roman';">&nbsp; </span></span><span style="mso-bidi-font-size:12.0pt;line-height:150%;font-family:宋体;mso-font-kerning:
0pt">从时代的角度讲，电子信息化时代的款款而来，以及更多新媒体技术<span lang="EN-US">(</span>微博、微信、移动<span lang="EN-US">APP</span>、<span lang="EN-US">Web)</span>的出现在带来更多信息量、信息渠道的同时也加快了传播速率，而这也是毕然的。在这海量的<span lang="EN-US">PB</span>级数据的产生也让信息检索、信息挖掘等问题也变得热门起来，于是“关键词”的意义也就“老歌新唱”了。一条信息，如何在海量的信息中被发现、被关注，如何让信息变得有价值才是当前这个时代需要解决的问题。毕竟，现在难道不是得不到信息，而是如何让信息有价值。<span lang="EN-US"><o:p></o:p></span></span></p>

<p class="MsoNormal" style="margin-left:48.0pt;text-indent:24.0pt;mso-pagination:
widow-orphan;mso-list:l12 level1 lfo13"><span lang="EN-US" style="mso-bidi-font-size:12.0pt;line-height:150%;mso-fareast-font-family:
&quot;Times New Roman&quot;;mso-font-kerning:0pt">3.<span style="font-size: 7pt; line-height: normal; font-family: 'Times New Roman';">&nbsp; </span></span><span style="mso-bidi-font-size:12.0pt;line-height:150%;font-family:宋体;mso-font-kerning:
0pt">从科技的角度讲，从艾伦<span lang="EN-US">.</span>图灵提出的图灵测试以来，人工智能技术一直都是人们在不断追寻、不断完善的技术。在人工智能技术领域，自然语言处理一直都是最热门也是最有意义的一个模块。因为<span lang="EN-US">“</span>语言<span lang="EN-US">”</span>这个庞大的体系拥有太多太多无法用<span lang="EN-US">“0”“1”</span>来判定的因素，如何让计算机真正明白我们在表达什么便是人工智能领域最高的山峰。<span lang="EN-US"><o:p></o:p></span></span></p>

<h2><a name="_Toc416954704"></a><a name="_Toc387513102"></a><a name="_Toc387333442"><span lang="EN-US">1.2</span></a>关键词抽取技术的现状<span lang="EN-US"><o:p></o:p></span></h2>

<p class="MsoNormal" style="text-indent:24.0pt;mso-pagination:widow-orphan"><span style="mso-bidi-font-size:12.0pt;
line-height:150%;font-family:宋体;mso-font-kerning:0pt">根据查找资料和咨询相关领域的人士，我发现“关键词”技术的核心冰非关键词本身。就好比你想了解一个人不应该是听他怎么说看他怎么做，而是要了解他是怎么想的。因为模仿表层永远无法真正得知“渔”的意义。<span lang="EN-US"><o:p></o:p></span></span></p>

<p class="MsoNormal" style="text-indent:24.0pt;mso-pagination:widow-orphan"><span style="mso-bidi-font-size:12.0pt;
line-height:150%;font-family:宋体;mso-font-kerning:0pt">关键词抽取的关键是从哪里抽取，而这个<span lang="EN-US">“</span>地方<span lang="EN-US">”</span>不是原文，而是构成原文的词语链。专业术语把这种<span lang="EN-US">“</span>化句成词<span lang="EN-US">”</span>的过程叫做<span lang="EN-US">“</span>分词<span lang="EN-US">”</span>。本文的后边章节也将重点讲解分词的相关概念和算法，这里不做重点。<span lang="EN-US"><o:p></o:p></span></span></p>

<p class="MsoNormal" style="text-indent:24.0pt;mso-pagination:widow-orphan"><span style="mso-bidi-font-size:12.0pt;
line-height:150%;font-family:宋体;mso-font-kerning:0pt">分词技术一具语言的不同，其意义也是不同的。在自然语言科研领域，中文分词的意义在于依照整句的原有意义拆分出正确的词组。因为中文是以字为单元构成的语言体系，字与字之间的组合包涵的意义是不同的，甚至同一个词组在不同语境下的意义也有可能是不同甚至是相反的。而本次论文也是以中文分词为核心的关键词抽取系统。<span lang="EN-US"><o:p></o:p></span></span></p>

<p class="MsoNormal" style="text-indent:24.0pt;mso-pagination:widow-orphan"><span style="mso-bidi-font-size:12.0pt;
line-height:150%;font-family:宋体;mso-font-kerning:0pt">现在使用比较广泛的有以<span lang="EN-US">TFIDF</span>技术、<span lang="EN-US">TextRank</span>技术为核心的分词机制。其中<span lang="EN-US">TFIDF</span>是依照自身的词频来统计关键词的，这种技术的优势在于遍历速率快、特征值高（词语代表性强）。而<span lang="EN-US">TextRank</span>技术则是依照大词典的全词频统计，这种技术在保证了常用词过滤上效果明显。<span lang="EN-US"><o:p></o:p></span></span></p>

<span lang="EN-US" style="font-size:16.0pt;line-height:150%;font-family:黑体;
mso-bidi-font-family:宋体;mso-font-kerning:18.0pt;mso-ansi-language:EN-US;
mso-fareast-language:ZH-CN;mso-bidi-language:AR-SA"><br clear="all" style="page-break-before:always">
</span>

<h1 align="center" style="text-align:center;text-indent:32.0pt"><a name="_Toc416954705"></a><a name="_Toc387513104"></a><a name="_Toc387333444"><span style="font-size:
16.0pt;line-height:150%;font-weight:normal">第<span lang="EN-US">2</span>章<span lang="EN-US">&nbsp; </span>系统</span></a><span style="font-size:16.0pt;line-height:
150%;font-weight:normal">说明</span><span lang="EN-US" style="font-size:10.5pt;line-height:150%;font-family:宋体;mso-bidi-font-family:
&quot;Times New Roman&quot;;mso-font-kerning:0pt;font-weight:normal"><o:p></o:p></span></h1>

<h2><a name="_Toc416954706"></a><a name="_Toc387513105"></a><a name="_Toc387333445"></a><a name="_Toc359248200"></a><a name="_Toc326652636"></a><a name="_Toc105563300"></a><a name="_Toc291963343"></a><a name="_Toc326498581"></a><a name="_Toc326498582"></a><span lang="EN-US">2.1&nbsp; </span>项目开发进度<span lang="EN-US"><o:p></o:p></span></h2>

<p class="MsoNormal" style="text-indent:24.0pt"><span lang="EN-US">Rosetta Keywords
Extraction System</span><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;
mso-hansi-font-family:&quot;Times New Roman&quot;">（罗塞塔关键词抽取系统</span><span lang="EN-US">
RKES</span><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;
mso-hansi-font-family:&quot;Times New Roman&quot;">）的开发计划大致依从敏捷开发的步骤。整体雏形开发累计时长</span><span lang="EN-US">6</span><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;
mso-hansi-font-family:&quot;Times New Roman&quot;">天。</span><span lang="EN-US"><o:p></o:p></span></p>

<p class="MsoNormal" style="text-indent:24.0pt;mso-pagination:widow-orphan"><span style="mso-bidi-font-size:12.0pt;line-height:150%;font-family:宋体;mso-font-kerning:
0pt">下边列出主要的开发记录，这些记录具有标志性的意义。<span lang="EN-US"><o:p></o:p></span></span></p>

<table class="MsoTable15Plain1" border="1" cellspacing="0" cellpadding="0" width="604" style="width: 453.15pt; border: none;">
 <tbody><tr>
  <td width="198" colspan="2" valign="top" style="width: 148.6pt; border-color: rgb(191, 191, 191); border-width: 1pt; padding: 0cm 5.4pt;">
  <p class="MsoNormal" align="center" style="text-align:center;text-indent:24.1pt;
  mso-pagination:widow-orphan;mso-yfti-cnfc:5"><b><span style="font-family:
  宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:&quot;Times New Roman&quot;">时间轴</span><span lang="EN-US"><o:p></o:p></span></b></p>
  </td>
  <td width="142" rowspan="2" valign="top" style="width: 106.3pt; border-top-color: rgb(191, 191, 191); border-right-color: rgb(191, 191, 191); border-bottom-color: rgb(191, 191, 191); border-top-width: 1pt; border-right-width: 1pt; border-bottom-width: 1pt; border-left-style: none; padding: 0cm 5.4pt;">
  <p class="MsoNormal" align="center" style="text-align:center;text-indent:24.1pt;
  mso-pagination:widow-orphan;mso-yfti-cnfc:1"><b><span style="font-family:
  宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:&quot;Times New Roman&quot;">事件性质</span><span lang="EN-US"><o:p></o:p></span></b></p>
  </td>
  <td width="264" rowspan="2" valign="top" style="width: 198.25pt; border-top-color: rgb(191, 191, 191); border-right-color: rgb(191, 191, 191); border-bottom-color: rgb(191, 191, 191); border-top-width: 1pt; border-right-width: 1pt; border-bottom-width: 1pt; border-left-style: none; padding: 0cm 5.4pt;">
  <p class="MsoNormal" align="center" style="text-align:center;text-indent:24.1pt;
  mso-pagination:widow-orphan;mso-yfti-cnfc:1"><b><span style="font-family:
  宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:&quot;Times New Roman&quot;">事件内容</span><span lang="EN-US"><o:p></o:p></span></b></p>
  </td>
 </tr>
 <tr>
  <td width="94" valign="top" style="width: 70.65pt; border-right-color: rgb(191, 191, 191); border-bottom-color: rgb(191, 191, 191); border-left-color: rgb(191, 191, 191); border-right-width: 1pt; border-bottom-width: 1pt; border-left-width: 1pt; border-top-style: none; background-color: rgb(242, 242, 242); padding: 0cm 5.4pt; background-position: initial initial; background-repeat: initial initial;">
  <p class="MsoNormal" align="center" style="text-align:center;text-indent:24.1pt;
  mso-pagination:widow-orphan;mso-yfti-cnfc:68"><b><span style="font-family:
  宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:&quot;Times New Roman&quot;">开始</span><span lang="EN-US"><o:p></o:p></span></b></p>
  </td>
  <td width="104" valign="top" style="width: 77.95pt; border-top-style: none; border-left-style: none; border-bottom-color: rgb(191, 191, 191); border-bottom-width: 1pt; border-right-color: rgb(191, 191, 191); border-right-width: 1pt; background-color: rgb(242, 242, 242); padding: 0cm 5.4pt; background-position: initial initial; background-repeat: initial initial;">
  <p class="MsoNormal" align="center" style="text-align:center;text-indent:24.1pt;
  mso-pagination:widow-orphan;mso-yfti-cnfc:64"><span style="font-family:宋体;
  mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:&quot;Times New Roman&quot;">结束</span><span lang="EN-US"><o:p></o:p></span></p>
  </td>
 </tr>
 <tr style="mso-yfti-irow:1;height:29.6pt">
  <td width="94" valign="top" style="width: 70.65pt; border-right-color: rgb(191, 191, 191); border-bottom-color: rgb(191, 191, 191); border-left-color: rgb(191, 191, 191); border-right-width: 1pt; border-bottom-width: 1pt; border-left-width: 1pt; border-top-style: none; padding: 0cm 5.4pt; height: 29.6pt;">
  <p class="MsoNormal" align="center" style="text-align:center;text-indent:24.1pt;
  mso-pagination:widow-orphan;mso-yfti-cnfc:4"><b><span lang="EN-US">2015.03.17<o:p></o:p></span></b></p>
  </td>
  <td width="104" valign="top" style="width: 77.95pt; border-top-style: none; border-left-style: none; border-bottom-color: rgb(191, 191, 191); border-bottom-width: 1pt; border-right-color: rgb(191, 191, 191); border-right-width: 1pt; padding: 0cm 5.4pt; height: 29.6pt;">
  <p class="MsoNormal" align="center" style="text-align:center;text-indent:24.1pt;
  mso-pagination:widow-orphan"><span lang="EN-US">2015.03.17<o:p></o:p></span></p>
  </td>
  <td width="142" valign="top" style="width: 106.3pt; border-top-style: none; border-left-style: none; border-bottom-color: rgb(191, 191, 191); border-bottom-width: 1pt; border-right-color: rgb(191, 191, 191); border-right-width: 1pt; padding: 0cm 5.4pt; height: 29.6pt;">
  <p class="MsoNormal" style="text-indent:24.1pt;mso-pagination:widow-orphan"><span lang="EN-US">WKE</span><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;
  mso-hansi-font-family:&quot;Times New Roman&quot;">（</span><span lang="EN-US">RKES</span><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:
  &quot;Times New Roman&quot;">开发版名称）项目创建</span><span lang="EN-US"><o:p></o:p></span></p>
  </td>
  <td width="264" valign="top" style="width: 198.25pt; border-top-style: none; border-left-style: none; border-bottom-color: rgb(191, 191, 191); border-bottom-width: 1pt; border-right-color: rgb(191, 191, 191); border-right-width: 1pt; padding: 0cm 5.4pt; height: 29.6pt;">
  <p class="MsoNormal" style="text-indent:24.1pt;mso-pagination:widow-orphan"><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:
  &quot;Times New Roman&quot;">项目创建；环境变量测试；项目移植；静态模板网页设计完成</span><span lang="EN-US"><o:p></o:p></span></p>
  </td>
 </tr>
 <tr>
  <td width="94" valign="top" style="width: 70.65pt; border-right-color: rgb(191, 191, 191); border-bottom-color: rgb(191, 191, 191); border-left-color: rgb(191, 191, 191); border-right-width: 1pt; border-bottom-width: 1pt; border-left-width: 1pt; border-top-style: none; background-color: rgb(242, 242, 242); padding: 0cm 5.4pt; background-position: initial initial; background-repeat: initial initial;">
  <p class="MsoNormal" align="center" style="text-align:center;text-indent:24.1pt;
  mso-pagination:widow-orphan;mso-yfti-cnfc:68"><b><span lang="EN-US">2015.03.17<o:p></o:p></span></b></p>
  </td>
  <td width="104" valign="top" style="width: 77.95pt; border-top-style: none; border-left-style: none; border-bottom-color: rgb(191, 191, 191); border-bottom-width: 1pt; border-right-color: rgb(191, 191, 191); border-right-width: 1pt; background-color: rgb(242, 242, 242); padding: 0cm 5.4pt; background-position: initial initial; background-repeat: initial initial;">
  <p class="MsoNormal" align="center" style="text-align:center;text-indent:24.1pt;
  mso-pagination:widow-orphan;mso-yfti-cnfc:64"><span lang="EN-US">2015.03.17<o:p></o:p></span></p>
  </td>
  <td width="142" valign="top" style="width: 106.3pt; border-top-style: none; border-left-style: none; border-bottom-color: rgb(191, 191, 191); border-bottom-width: 1pt; border-right-color: rgb(191, 191, 191); border-right-width: 1pt; background-color: rgb(242, 242, 242); padding: 0cm 5.4pt; background-position: initial initial; background-repeat: initial initial;">
  <p class="MsoNormal" style="text-indent:24.1pt;mso-pagination:widow-orphan;
  mso-yfti-cnfc:64"><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;
  mso-hansi-font-family:&quot;Times New Roman&quot;">基础系统框架搭建</span><span lang="EN-US"><o:p></o:p></span></p>
  </td>
  <td width="264" valign="top" style="width: 198.25pt; border-top-style: none; border-left-style: none; border-bottom-color: rgb(191, 191, 191); border-bottom-width: 1pt; border-right-color: rgb(191, 191, 191); border-right-width: 1pt; background-color: rgb(242, 242, 242); padding: 0cm 5.4pt; background-position: initial initial; background-repeat: initial initial;">
  <p class="MsoNormal" style="text-indent:24.1pt;mso-pagination:widow-orphan;
  mso-yfti-cnfc:64"><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;
  mso-hansi-font-family:&quot;Times New Roman&quot;">登录、用户组、用户及系统管理模块开发完成</span><span lang="EN-US"><o:p></o:p></span></p>
  </td>
 </tr>
 <tr>
  <td width="94" valign="top" style="width: 70.65pt; border-right-color: rgb(191, 191, 191); border-bottom-color: rgb(191, 191, 191); border-left-color: rgb(191, 191, 191); border-right-width: 1pt; border-bottom-width: 1pt; border-left-width: 1pt; border-top-style: none; padding: 0cm 5.4pt;">
  <p class="MsoNormal" align="center" style="text-align:center;text-indent:24.1pt;
  mso-pagination:widow-orphan;mso-yfti-cnfc:4"><b><span lang="EN-US">2015.03.20<o:p></o:p></span></b></p>
  </td>
  <td width="104" valign="top" style="width: 77.95pt; border-top-style: none; border-left-style: none; border-bottom-color: rgb(191, 191, 191); border-bottom-width: 1pt; border-right-color: rgb(191, 191, 191); border-right-width: 1pt; padding: 0cm 5.4pt;">
  <p class="MsoNormal" align="center" style="text-align:center;text-indent:24.1pt;
  mso-pagination:widow-orphan"><span lang="EN-US">2015.03.20<o:p></o:p></span></p>
  </td>
  <td width="142" valign="top" style="width: 106.3pt; border-top-style: none; border-left-style: none; border-bottom-color: rgb(191, 191, 191); border-bottom-width: 1pt; border-right-color: rgb(191, 191, 191); border-right-width: 1pt; padding: 0cm 5.4pt;">
  <p class="MsoNormal" style="text-indent:24.1pt;mso-pagination:widow-orphan"><span lang="EN-US">WKE&nbsp;Demo</span><span style="font-family:宋体;mso-ascii-font-family:
  &quot;Times New Roman&quot;;mso-hansi-font-family:&quot;Times New Roman&quot;">开发</span><span lang="EN-US"><o:p></o:p></span></p>
  </td>
  <td width="264" valign="top" style="width: 198.25pt; border-top-style: none; border-left-style: none; border-bottom-color: rgb(191, 191, 191); border-bottom-width: 1pt; border-right-color: rgb(191, 191, 191); border-right-width: 1pt; padding: 0cm 5.4pt;">
  <p class="MsoNormal" style="text-indent:24.1pt;mso-pagination:widow-orphan"><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:
  &quot;Times New Roman&quot;">分词模块搭建完成；关键词抽取模块开发完成</span><span lang="EN-US">&nbsp;<o:p></o:p></span></p>
  </td>
 </tr>
 <tr>
  <td width="94" valign="top" style="width: 70.65pt; border-right-color: rgb(191, 191, 191); border-bottom-color: rgb(191, 191, 191); border-left-color: rgb(191, 191, 191); border-right-width: 1pt; border-bottom-width: 1pt; border-left-width: 1pt; border-top-style: none; background-color: rgb(242, 242, 242); padding: 0cm 5.4pt; background-position: initial initial; background-repeat: initial initial;">
  <p class="MsoNormal" align="center" style="text-align:center;text-indent:24.1pt;
  mso-pagination:widow-orphan;mso-yfti-cnfc:68"><b><span lang="EN-US">2015.03.26<o:p></o:p></span></b></p>
  </td>
  <td width="104" valign="top" style="width: 77.95pt; border-top-style: none; border-left-style: none; border-bottom-color: rgb(191, 191, 191); border-bottom-width: 1pt; border-right-color: rgb(191, 191, 191); border-right-width: 1pt; background-color: rgb(242, 242, 242); padding: 0cm 5.4pt; background-position: initial initial; background-repeat: initial initial;">
  <p class="MsoNormal" align="center" style="text-align:center;text-indent:24.1pt;
  mso-pagination:widow-orphan;mso-yfti-cnfc:64"><span lang="EN-US">2015.03.26<o:p></o:p></span></p>
  </td>
  <td width="142" valign="top" style="width: 106.3pt; border-top-style: none; border-left-style: none; border-bottom-color: rgb(191, 191, 191); border-bottom-width: 1pt; border-right-color: rgb(191, 191, 191); border-right-width: 1pt; background-color: rgb(242, 242, 242); padding: 0cm 5.4pt; background-position: initial initial; background-repeat: initial initial;">
  <p class="MsoNormal" style="text-indent:24.1pt;mso-pagination:widow-orphan;
  mso-yfti-cnfc:64"><span lang="EN-US">CWM Demo&nbsp;</span><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:
  &quot;Times New Roman&quot;">开发</span><span lang="EN-US"><o:p></o:p></span></p>
  </td>
  <td width="264" valign="top" style="width: 198.25pt; border-top-style: none; border-left-style: none; border-bottom-color: rgb(191, 191, 191); border-bottom-width: 1pt; border-right-color: rgb(191, 191, 191); border-right-width: 1pt; background-color: rgb(242, 242, 242); padding: 0cm 5.4pt; background-position: initial initial; background-repeat: initial initial;">
  <p class="MsoNormal" style="text-indent:24.1pt;mso-pagination:widow-orphan;
  mso-yfti-cnfc:64"><span lang="EN-US">&nbsp;Web</span><span style="font-family:
  宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:&quot;Times New Roman&quot;">抓取模块框架开发完成</span><span lang="EN-US"><o:p></o:p></span></p>
  </td>
 </tr>
 <tr>
  <td width="94" valign="top" style="width: 70.65pt; border-right-color: rgb(191, 191, 191); border-bottom-color: rgb(191, 191, 191); border-left-color: rgb(191, 191, 191); border-right-width: 1pt; border-bottom-width: 1pt; border-left-width: 1pt; border-top-style: none; padding: 0cm 5.4pt;">
  <p class="MsoNormal" align="center" style="text-align:center;text-indent:24.1pt;
  mso-pagination:widow-orphan;mso-yfti-cnfc:4"><b><span lang="EN-US">2015.03.28<o:p></o:p></span></b></p>
  </td>
  <td width="104" valign="top" style="width: 77.95pt; border-top-style: none; border-left-style: none; border-bottom-color: rgb(191, 191, 191); border-bottom-width: 1pt; border-right-color: rgb(191, 191, 191); border-right-width: 1pt; padding: 0cm 5.4pt;">
  <p class="MsoNormal" align="center" style="text-align:center;text-indent:24.1pt;
  mso-pagination:widow-orphan"><span lang="EN-US">2015.03.28<o:p></o:p></span></p>
  </td>
  <td width="142" valign="top" style="width: 106.3pt; border-top-style: none; border-left-style: none; border-bottom-color: rgb(191, 191, 191); border-bottom-width: 1pt; border-right-color: rgb(191, 191, 191); border-right-width: 1pt; padding: 0cm 5.4pt;">
  <p class="MsoNormal" style="text-indent:24.1pt;mso-pagination:widow-orphan"><span lang="EN-US">WKE</span><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;
  mso-hansi-font-family:&quot;Times New Roman&quot;">项目更名</span><span lang="EN-US"><o:p></o:p></span></p>
  </td>
  <td width="264" valign="top" style="width: 198.25pt; border-top-style: none; border-left-style: none; border-bottom-color: rgb(191, 191, 191); border-bottom-width: 1pt; border-right-color: rgb(191, 191, 191); border-right-width: 1pt; padding: 0cm 5.4pt;">
  <p class="MsoNormal" style="text-indent:24.1pt;mso-pagination:widow-orphan"><span lang="EN-US">WKE</span><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;
  mso-hansi-font-family:&quot;Times New Roman&quot;">项目更名为</span><span lang="EN-US">&nbsp;&nbsp;&nbsp; Rosetta Keywords Extraction System</span><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:
  &quot;Times New Roman&quot;">（罗塞塔关键词抽取系统</span><span lang="EN-US"> RKES</span><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:
  &quot;Times New Roman&quot;">）</span><span lang="EN-US"><o:p></o:p></span></p>
  </td>
 </tr>
 <tr>
  <td width="94" valign="top" style="width: 70.65pt; border-right-color: rgb(191, 191, 191); border-bottom-color: rgb(191, 191, 191); border-left-color: rgb(191, 191, 191); border-right-width: 1pt; border-bottom-width: 1pt; border-left-width: 1pt; border-top-style: none; background-color: rgb(242, 242, 242); padding: 0cm 5.4pt; background-position: initial initial; background-repeat: initial initial;">
  <p class="MsoNormal" align="center" style="text-align:center;text-indent:24.1pt;
  mso-pagination:widow-orphan;mso-yfti-cnfc:68"><b><span lang="EN-US">2015.03.28<o:p></o:p></span></b></p>
  </td>
  <td width="104" valign="top" style="width: 77.95pt; border-top-style: none; border-left-style: none; border-bottom-color: rgb(191, 191, 191); border-bottom-width: 1pt; border-right-color: rgb(191, 191, 191); border-right-width: 1pt; background-color: rgb(242, 242, 242); padding: 0cm 5.4pt; background-position: initial initial; background-repeat: initial initial;">
  <p class="MsoNormal" align="center" style="text-align:center;text-indent:24.1pt;
  mso-pagination:widow-orphan;mso-yfti-cnfc:64"><span lang="EN-US">2015.03.28<o:p></o:p></span></p>
  </td>
  <td width="142" valign="top" style="width: 106.3pt; border-top-style: none; border-left-style: none; border-bottom-color: rgb(191, 191, 191); border-bottom-width: 1pt; border-right-color: rgb(191, 191, 191); border-right-width: 1pt; background-color: rgb(242, 242, 242); padding: 0cm 5.4pt; background-position: initial initial; background-repeat: initial initial;">
  <p class="MsoNormal" style="text-indent:24.1pt;mso-pagination:widow-orphan;
  mso-yfti-cnfc:64"><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;
  mso-hansi-font-family:&quot;Times New Roman&quot;">关键词抽取模块优化</span><span lang="EN-US"><o:p></o:p></span></p>
  </td>
  <td width="264" valign="top" style="width: 198.25pt; border-top-style: none; border-left-style: none; border-bottom-color: rgb(191, 191, 191); border-bottom-width: 1pt; border-right-color: rgb(191, 191, 191); border-right-width: 1pt; background-color: rgb(242, 242, 242); padding: 0cm 5.4pt; background-position: initial initial; background-repeat: initial initial;">
  <p class="MsoNormal" style="text-indent:24.1pt;mso-pagination:widow-orphan;
  mso-yfti-cnfc:64"><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;
  mso-hansi-font-family:&quot;Times New Roman&quot;">常用词加权降低</span><span lang="EN-US"><o:p></o:p></span></p>
  </td>
 </tr>
 <tr>
  <td width="94" valign="top" style="width: 70.65pt; border-right-color: rgb(191, 191, 191); border-bottom-color: rgb(191, 191, 191); border-left-color: rgb(191, 191, 191); border-right-width: 1pt; border-bottom-width: 1pt; border-left-width: 1pt; border-top-style: none; padding: 0cm 5.4pt;">
  <p class="MsoNormal" align="center" style="text-align:center;text-indent:24.1pt;
  mso-pagination:widow-orphan;mso-yfti-cnfc:4"><b><span lang="EN-US">2015.04.05<o:p></o:p></span></b></p>
  </td>
  <td width="104" valign="top" style="width: 77.95pt; border-top-style: none; border-left-style: none; border-bottom-color: rgb(191, 191, 191); border-bottom-width: 1pt; border-right-color: rgb(191, 191, 191); border-right-width: 1pt; padding: 0cm 5.4pt;">
  <p class="MsoNormal" align="center" style="text-align:center;text-indent:24.1pt;
  mso-pagination:widow-orphan"><span lang="EN-US">2015.04.05<o:p></o:p></span></p>
  </td>
  <td width="142" valign="top" style="width: 106.3pt; border-top-style: none; border-left-style: none; border-bottom-color: rgb(191, 191, 191); border-bottom-width: 1pt; border-right-color: rgb(191, 191, 191); border-right-width: 1pt; padding: 0cm 5.4pt;">
  <p class="MsoNormal" style="text-indent:24.1pt;mso-pagination:widow-orphan"><span lang="EN-US">Web</span><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;
  mso-hansi-font-family:&quot;Times New Roman&quot;">抓取模块优化</span><span lang="EN-US">&nbsp;&nbsp;&nbsp; <o:p></o:p></span></p>
  </td>
  <td width="264" valign="top" style="width: 198.25pt; border-top-style: none; border-left-style: none; border-bottom-color: rgb(191, 191, 191); border-bottom-width: 1pt; border-right-color: rgb(191, 191, 191); border-right-width: 1pt; padding: 0cm 5.4pt;">
  <p class="MsoNormal" style="text-indent:24.1pt;mso-pagination:widow-orphan"><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:
  &quot;Times New Roman&quot;">改变抓去路径</span><span lang="EN-US"><o:p></o:p></span></p>
  </td>
 </tr>
 <tr>
  <td width="94" valign="top" style="width: 70.65pt; border-right-color: rgb(191, 191, 191); border-bottom-color: rgb(191, 191, 191); border-left-color: rgb(191, 191, 191); border-right-width: 1pt; border-bottom-width: 1pt; border-left-width: 1pt; border-top-style: none; background-color: rgb(242, 242, 242); padding: 0cm 5.4pt; background-position: initial initial; background-repeat: initial initial;">
  <p class="MsoNormal" align="center" style="text-align:center;text-indent:24.1pt;
  mso-pagination:widow-orphan;mso-yfti-cnfc:68"><b><span lang="EN-US">2015.04.10<o:p></o:p></span></b></p>
  </td>
  <td width="104" valign="top" style="width: 77.95pt; border-top-style: none; border-left-style: none; border-bottom-color: rgb(191, 191, 191); border-bottom-width: 1pt; border-right-color: rgb(191, 191, 191); border-right-width: 1pt; background-color: rgb(242, 242, 242); padding: 0cm 5.4pt; background-position: initial initial; background-repeat: initial initial;">
  <p class="MsoNormal" align="center" style="text-align:center;text-indent:24.1pt;
  mso-pagination:widow-orphan;mso-yfti-cnfc:64"><span lang="EN-US">2015.04.10<o:p></o:p></span></p>
  </td>
  <td width="142" valign="top" style="width: 106.3pt; border-top-style: none; border-left-style: none; border-bottom-color: rgb(191, 191, 191); border-bottom-width: 1pt; border-right-color: rgb(191, 191, 191); border-right-width: 1pt; background-color: rgb(242, 242, 242); padding: 0cm 5.4pt; background-position: initial initial; background-repeat: initial initial;">
  <p class="MsoNormal" style="text-indent:24.1pt;mso-pagination:widow-orphan;
  mso-yfti-cnfc:64"><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;
  mso-hansi-font-family:&quot;Times New Roman&quot;">代码优化精简</span><span lang="EN-US"><o:p></o:p></span></p>
  </td>
  <td width="264" valign="top" style="width: 198.25pt; border-top-style: none; border-left-style: none; border-bottom-color: rgb(191, 191, 191); border-bottom-width: 1pt; border-right-color: rgb(191, 191, 191); border-right-width: 1pt; background-color: rgb(242, 242, 242); padding: 0cm 5.4pt; background-position: initial initial; background-repeat: initial initial;">
  <p class="MsoNormal" style="text-indent:24.1pt;mso-pagination:widow-orphan;
  mso-yfti-cnfc:64"><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;
  mso-hansi-font-family:&quot;Times New Roman&quot;">删除部分</span><span lang="EN-US">Test Demo</span><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:
  &quot;Times New Roman&quot;">；优化界面跳转逻辑；新增</span><span lang="EN-US">shownews</span><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:
  &quot;Times New Roman&quot;">页面的“查看分析”功能</span><span lang="EN-US"><o:p></o:p></span></p>
  </td>
 </tr>
</tbody></table>

<p class="MsoNormal" align="center" style="text-align:center;text-indent:24.0pt;
mso-pagination:widow-orphan"><span style="mso-bidi-font-size:10.5pt;line-height:
150%;font-family:黑体;mso-font-kerning:0pt">表<span lang="EN-US">2.1</span>开发记录表<span lang="EN-US"><o:p></o:p></span></span></p>

<h2><a name="_Toc416954707"></a><a name="_Toc387513106"></a><a name="_Toc387333446"></a><a name="_Toc359248201"></a><a name="_Toc326652637"></a><a name="_Toc326498583"></a><span lang="EN-US">2.2</span><span lang="EN-US">&nbsp; </span>开发环境与方法及步骤<span lang="EN-US"><o:p></o:p></span></h2>

<h3 style="text-indent:24.0pt"><a name="_Toc416954708"></a><a name="_Toc387513107"></a><a name="_Toc387333447"></a><a name="_Toc359248202"></a><a name="_Toc326652638"></a><a name="_Toc326498584"></a><span lang="EN-US">2.2.1</span><span lang="EN-US">&nbsp; </span><span style="font-family:宋体;mso-ascii-font-family:
黑体;mso-fareast-font-family:宋体;mso-fareast-theme-font:minor-fareast;mso-hansi-font-family:
黑体">开发环境</span><span lang="EN-US"><o:p></o:p></span></h3>

<p class="MsoNormal" style="text-indent:24.0pt;mso-pagination:widow-orphan"><span style="mso-bidi-font-size:12.0pt;line-height:150%;font-family:宋体;mso-font-kerning:
0pt">操作系统：<span lang="EN-US">Microsoft Windows 8.1 </span>专业版；<span lang="EN-US"><o:p></o:p></span></span></p>

<p class="MsoNormal" style="text-indent:24.0pt;mso-pagination:widow-orphan"><span lang="EN-US" style="mso-bidi-font-size:12.0pt;line-height:150%;font-family:宋体;
mso-font-kerning:0pt">Java</span><span style="mso-bidi-font-size:12.0pt;
line-height:150%;font-family:宋体;mso-font-kerning:0pt">版本：<span lang="EN-US">JDK 1.6.33</span>；<span lang="EN-US"><o:p></o:p></span></span></p>

<p class="MsoNormal" style="text-indent:24.0pt;mso-pagination:widow-orphan"><span lang="EN-US" style="mso-bidi-font-size:12.0pt;line-height:150%;font-family:宋体;
mso-font-kerning:0pt">Tomcat</span><span style="mso-bidi-font-size:12.0pt;
line-height:150%;font-family:宋体;mso-font-kerning:0pt">版本：<span lang="EN-US">Apache
Tomcat 1.6.x</span>；<span lang="EN-US"><o:p></o:p></span></span></p>

<p class="MsoNormal" style="text-indent:24.0pt;mso-pagination:widow-orphan"><span lang="EN-US" style="mso-bidi-font-size:12.0pt;line-height:150%;font-family:宋体;
mso-font-kerning:0pt">Eclipse</span><span style="mso-bidi-font-size:12.0pt;
line-height:150%;font-family:宋体;mso-font-kerning:0pt">版本：<span lang="EN-US">Eclipse
Java EE IDE for Web Developers</span>；<span lang="EN-US"><o:p></o:p></span></span></p>

<p class="MsoNormal" style="text-indent:24.0pt;mso-pagination:widow-orphan"><span lang="EN-US" style="mso-bidi-font-size:12.0pt;line-height:150%;font-family:宋体;
mso-font-kerning:0pt">MySQL</span><span style="mso-bidi-font-size:12.0pt;
line-height:150%;font-family:宋体;mso-font-kerning:0pt">版本：<span lang="EN-US">MySQL
5.7.<o:p></o:p></span></span></p>

<h3 style="text-indent:24.0pt"><a name="_Toc416954709"></a><a name="_Toc387513108"></a><a name="_Toc387333448"></a><a name="_Toc359248203"></a><a name="_Toc326652639"></a><a name="_Toc326498585"></a><span lang="EN-US">2.2.2</span><span lang="EN-US">&nbsp; </span><span style="font-family:宋体;mso-ascii-font-family:
黑体;mso-fareast-font-family:宋体;mso-fareast-theme-font:minor-fareast;mso-hansi-font-family:
黑体">开发方法及步骤</span><span lang="EN-US"><o:p></o:p></span></h3>

<p class="MsoNormal" style="text-indent:24.0pt;mso-pagination:widow-orphan"><span lang="EN-US" style="mso-bidi-font-size:12.0pt;line-height:150%;font-family:宋体;
mso-font-kerning:0pt">RKES</span><span style="mso-bidi-font-size:12.0pt;
line-height:150%;font-family:宋体;mso-font-kerning:0pt">项目属于个人独立开发，所以对项目的功能模块设计、业务逻辑设计等传统开发方式的要求不高，所以采用敏捷开发的方式完成雏形搭建，再根据需求进行迭代开发不断优化。<span lang="EN-US"><o:p></o:p></span></span></p>

<p class="MsoNormal" style="text-indent:24.0pt;mso-pagination:widow-orphan"><span lang="EN-US" style="mso-bidi-font-size:12.0pt;line-height:150%;font-family:宋体;
mso-font-kerning:0pt">RKES</span><span style="mso-bidi-font-size:12.0pt;
line-height:150%;font-family:宋体;mso-font-kerning:0pt">的开发步骤大致如下：<span lang="EN-US"><o:p></o:p></span></span></p>

<p class="MsoNormal" style="margin-left:42.0pt;text-indent:24.0pt;mso-pagination:
widow-orphan;mso-list:l3 level1 lfo14"><span lang="EN-US" style="mso-bidi-font-size:12.0pt;line-height:150%;font-family:宋体;mso-bidi-font-family:
宋体;mso-font-kerning:0pt">1）<span style="font-size: 7pt; line-height: normal; font-family: 'Times New Roman';">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span><span style="mso-bidi-font-size:12.0pt;line-height:150%;font-family:宋体;mso-font-kerning:
0pt">前期准备工作：<span lang="EN-US"><o:p></o:p></span></span></p>

<p class="MsoNormal" style="margin-left:41.95pt;text-indent:24.0pt;mso-pagination:
widow-orphan"><span lang="EN-US" style="mso-bidi-font-size:12.0pt;line-height:
150%;font-family:宋体;mso-font-kerning:0pt">Rosetta Keywords Extraction System</span><span style="mso-bidi-font-size:12.0pt;line-height:150%;font-family:宋体;mso-font-kerning:
0pt">（罗塞塔关键词抽取系统<span lang="EN-US"> RKES</span>）是使用<span lang="EN-US">J2EE</span>架构<span lang="EN-US">SSM</span>框架（<span lang="EN-US">struts2 + spring + mybatis</span>）开发实现。<span lang="EN-US">SSM</span>框架是当前<span lang="EN-US">JAVA</span>网站建设常用的开发架构，所以在前期进行了该框架的配置工作。其中包括<span lang="EN-US">JDK</span>的环境变量配置，<span lang="EN-US">Tomcat</span>的环境变量配置与<span lang="EN-US">eclipse</span>的配置。<span lang="EN-US"><o:p></o:p></span></span></p>

<p class="MsoNormal" style="margin-left:42.0pt;text-indent:24.0pt;mso-pagination:
widow-orphan;mso-list:l3 level1 lfo14"><span lang="EN-US" style="mso-bidi-font-size:12.0pt;line-height:150%;font-family:宋体;mso-bidi-font-family:
宋体;mso-font-kerning:0pt">2）<span style="font-size: 7pt; line-height: normal; font-family: 'Times New Roman';">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span><span lang="EN-US" style="mso-bidi-font-size:12.0pt;line-height:150%;font-family:宋体;
mso-font-kerning:0pt">SSM</span><span style="mso-bidi-font-size:12.0pt;
line-height:150%;font-family:宋体;mso-font-kerning:0pt">整合：<span lang="EN-US"><o:p></o:p></span></span></p>

<p class="MsoNormal" style="margin-left:41.95pt;text-indent:24.0pt;mso-pagination:
widow-orphan"><span style="mso-bidi-font-size:12.0pt;line-height:150%;
font-family:宋体;mso-font-kerning:0pt">其中包括相关<span lang="EN-US">jar</span>包的导入；<span lang="EN-US">JDBC</span>的配置；<span lang="EN-US">spring-mybatis.xml</span>配置文件的创建；<span lang="EN-US">Log4j</span>的配置；配置<span lang="EN-US">web.xml</span>文件等以及一些接口类的编码。<span lang="EN-US"><o:p></o:p></span></span></p>

<p class="MsoNormal" style="margin-left:42.0pt;text-indent:24.0pt;mso-pagination:
widow-orphan;mso-list:l3 level1 lfo14"><span lang="EN-US" style="mso-bidi-font-size:12.0pt;line-height:150%;font-family:宋体;mso-bidi-font-family:
宋体;mso-font-kerning:0pt">3）<span style="font-size: 7pt; line-height: normal; font-family: 'Times New Roman';">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span><span style="mso-bidi-font-size:12.0pt;line-height:150%;font-family:宋体;mso-font-kerning:
0pt">数据库创建：<span lang="EN-US"><o:p></o:p></span></span></p>

<p class="MsoNormal" style="margin-left:41.95pt;text-indent:24.0pt;mso-pagination:
widow-orphan"><span lang="EN-US" style="mso-bidi-font-size:12.0pt;line-height:
150%;font-family:宋体;mso-font-kerning:0pt">RKES</span><span style="mso-bidi-font-size:
12.0pt;line-height:150%;font-family:宋体;mso-font-kerning:0pt">使用<span lang="EN-US">Mysql</span>数据库，数据库名称为<span lang="EN-US">WKE</span>，在项目改变名称时并没有跟随重新命名，这个主要是本人自己的情怀寄托，算是一种纪念吧。在数据库创建初期只加入了一些基础表，其中包括作者表（<span lang="EN-US">t_pt_owner</span>）、功能树表（<span lang="EN-US">t_xt_gns</span>）、角色表（<span lang="EN-US">t_xt_js</span>）、角色功能树表（<span lang="EN-US">t_xt_js_gns</span>）、用户表（<span lang="EN-US">t_xt_user</span>）、用户角色表（<span lang="EN-US">t_xt_user_js</span>）。这些都是一些基础的系统管理表，其具体用途将在后边的章节介绍。<span lang="EN-US"><o:p></o:p></span></span></p>

<p class="MsoNormal" style="margin-left:42.0pt;text-indent:24.0pt;mso-pagination:
widow-orphan;mso-list:l3 level1 lfo14"><span lang="EN-US" style="mso-bidi-font-size:12.0pt;line-height:150%;font-family:宋体;mso-bidi-font-family:
宋体;mso-font-kerning:0pt">4）<span style="font-size: 7pt; line-height: normal; font-family: 'Times New Roman';">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span><span style="mso-bidi-font-size:12.0pt;line-height:150%;font-family:宋体;mso-font-kerning:
0pt">项目开发：<span lang="EN-US"><o:p></o:p></span></span></p>

<p class="MsoNormal" style="margin-left:41.95pt;text-indent:24.0pt;mso-pagination:
widow-orphan"><span style="mso-bidi-font-size:12.0pt;line-height:150%;
font-family:宋体;mso-font-kerning:0pt">真正的项目开发过程可以细分为：静态页面开发、系统架构开发、核心系统开发、系统整合开发、迭代开发等。<span lang="EN-US"><o:p></o:p></span></span></p>

<p class="MsoNormal" style="margin-left:41.95pt;text-indent:24.0pt;mso-pagination:
widow-orphan"><span style="mso-bidi-font-size:12.0pt;line-height:150%;
font-family:宋体;mso-font-kerning:0pt">静态网页开发主要指系统依从的<span lang="EN-US">WEB</span>网页的模板设计其中包括布局<span lang="EN-US">CSS</span>修改，图片设计等前段设计。<span lang="EN-US"><o:p></o:p></span></span></p>

<p class="MsoNormal" style="margin-left:41.95pt;text-indent:24.0pt;mso-pagination:
widow-orphan"><span style="mso-bidi-font-size:12.0pt;line-height:150%;
font-family:宋体;mso-font-kerning:0pt">系统架构设计主要围绕系统管理（<span lang="EN-US">system</span>）模块的编码。<span lang="EN-US"><o:p></o:p></span></span></p>

<p class="MsoNormal" style="margin-left:41.95pt;text-indent:24.0pt;mso-pagination:
widow-orphan"><span style="mso-bidi-font-size:12.0pt;line-height:150%;
font-family:宋体;mso-font-kerning:0pt">核心系统开发就是<span lang="EN-US">WKE</span>（关键词抽取模块）模块，<span lang="EN-US">CWM</span>（<span lang="EN-US">Web</span>抓取模块）模块的开发。<span lang="EN-US"><o:p></o:p></span></span></p>

<h2><a name="_Toc416954710"><span lang="EN-US">2.3&nbsp; </span>系统界面展示</a><span lang="EN-US"><o:p></o:p></span></h2>

<p class="MsoNormal" style="text-indent:24.0pt;mso-pagination:widow-orphan"><span style="mso-bidi-font-size:12.0pt;line-height:150%;font-family:宋体;mso-font-kerning:
0pt">系统说明我将采用前后端同步讲解的方式进行说明，这样有助于理解实现原理。</span><span lang="EN-US"><o:p></o:p></span></p>

<h3 style="text-indent:24.0pt"><a name="_Toc416954711"><span lang="EN-US">2.3.1&nbsp; </span></a><span style="font-family:宋体;mso-ascii-font-family:黑体;mso-fareast-font-family:宋体;
mso-fareast-theme-font:minor-fareast;mso-hansi-font-family:黑体">登录</span><span lang="EN-US"><o:p></o:p></span></h3>

<p class="MsoNormal" style="text-indent:24.0pt;mso-pagination:widow-orphan"><span style="mso-bidi-font-size:12.0pt;line-height:150%;font-family:宋体;mso-font-kerning:
0pt">登录界面：用户在第一次登陆<span lang="EN-US">RKES</span>或者登陆超时需要重新登录时回来到如下页面。<span lang="EN-US"><o:p></o:p></span></span></p>

<p class="MsoNormal" align="center" style="text-align:center;text-indent:24.0pt"><span lang="EN-US"><v:shape id="图片_x0020_1" o:spid="_x0000_i1074" type="#_x0000_t75" style="width:412.5pt;height:223.5pt;visibility:visible;
 mso-wrap-style:square">
 <img src="${base}/images/xtsm_files/922f545c-0dad-4ff0-8f1a-3322cce28cf5.png" o:title="">
</v:shape></span><span lang="EN-US"><o:p></o:p></span></p>

<p class="MsoNormal" align="center" style="text-align:center;text-indent:24.0pt"><span style="font-family:黑体">登录界面<span lang="EN-US"><o:p></o:p></span></span></p>

<p class="MsoNormal" style="text-indent:24.0pt;mso-pagination:widow-orphan"><span style="mso-bidi-font-size:12.0pt;line-height:150%;font-family:宋体;mso-font-kerning:
0pt">简洁的登录界面，用户输入正确的用户名以及正确的密码再点击<span lang="EN-US">“</span>登陆<span lang="EN-US">”</span>进入首页。这里的用户名和密码后台做了非空效验以及正确性效验，以及错误提示。如下图：<span lang="EN-US"><o:p></o:p></span></span></p>

<p class="MsoNormal" align="center" style="text-align:center;text-indent:24.0pt"><span lang="EN-US"><v:shape id="图片_x0020_2" o:spid="_x0000_i1073" type="#_x0000_t75" style="width:303.75pt;height:232.5pt;visibility:visible;
 mso-wrap-style:square">
 <img src="${base}/images/xtsm_files/d6c01b38-2908-4ac0-9447-7506d31983eb.png" o:title="">
</v:shape></span><span lang="EN-US" style="mso-bidi-font-size:12.0pt;line-height:
150%;font-family:宋体;mso-font-kerning:0pt"><o:p></o:p></span></p>

<p class="MsoNormal" style="text-indent:24.0pt;mso-pagination:widow-orphan"><span style="mso-bidi-font-size:12.0pt;line-height:150%;font-family:宋体;mso-font-kerning:
0pt">注意：用户名或者密码在输入错误时会自动清空密码。<span lang="EN-US"><o:p></o:p></span></span></p>

<p class="MsoNormal" style="text-indent:24.0pt;mso-pagination:widow-orphan"><span style="mso-bidi-font-size:12.0pt;line-height:150%;font-family:宋体;mso-font-kerning:
0pt">登录后台：后台的控制有两个<span lang="EN-US">action</span>，一个用于初始化页面，另一个用于登录效验。<span lang="EN-US"><o:p></o:p></span></span></p>

<p class="MsoNormal" style="text-indent:24.0pt;mso-pagination:widow-orphan"><span style="mso-bidi-font-size:12.0pt;line-height:150%;font-family:宋体;mso-font-kerning:
0pt">这里主要给出登陆效验的核心代码：<span lang="EN-US"><o:p></o:p></span></span></p>

<p class="MsoNormal" align="center" style="text-align:center;text-indent:24.0pt;
mso-pagination:widow-orphan"><span lang="EN-US"><v:shape id="图片_x0020_37" o:spid="_x0000_i1072" type="#_x0000_t75" style="width:390pt;
 height:195pt;visibility:visible;mso-wrap-style:square">
 <img src="${base}/images/xtsm_files/ad616ddc-2c9f-48a6-a02a-0916d34ac3ca.png" o:title="">
</v:shape></span><span lang="EN-US" style="mso-bidi-font-size:12.0pt;line-height:
150%;font-family:宋体;mso-font-kerning:0pt"><o:p></o:p></span></p>

<p class="MsoNormal" style="text-indent:24.0pt;mso-pagination:widow-orphan"><span style="mso-bidi-font-size:12.0pt;line-height:150%;font-family:宋体;mso-font-kerning:
0pt">这个<span lang="EN-US">action</span>主要实现了两个功能：<span lang="EN-US">1.</span>用户效验，这是<span lang="EN-US">struts2</span>的写法；<span lang="EN-US">2.</span>初始化菜单，这里需要提到的一点是我们对用户的权限管理体现在不同角色的用户登录系统后看到的菜单是不一样的，所以这里需要根据不同的用户从数据库获取不同的菜单参数。<span lang="EN-US"><o:p></o:p></span></span></p>

<h3 style="text-indent:24.0pt"><a name="_Toc416954712"><span lang="EN-US">2.3.2&nbsp; </span></a><span style="font-family:宋体;mso-ascii-font-family:黑体;mso-fareast-font-family:宋体;
mso-fareast-theme-font:minor-fareast;mso-hansi-font-family:黑体">首页</span><span lang="EN-US"><o:p></o:p></span></h3>

<p class="MsoNormal" style="text-indent:24.0pt;mso-pagination:widow-orphan"><span style="mso-bidi-font-size:12.0pt;line-height:150%;font-family:宋体;mso-font-kerning:
0pt">界面：我们使用<span lang="EN-US">root</span>用户（管理员）登录，因为管理员是该系统最高权限用户，所以菜单是最全面的。<span lang="EN-US"><o:p></o:p></span></span></p>

<p class="MsoNormal" style="text-indent:24.0pt"><span lang="EN-US"><v:shape id="图片_x0020_4" o:spid="_x0000_i1071" type="#_x0000_t75" style="width:6in;height:234pt;visibility:visible;mso-wrap-style:square">
 <img src="${base}/images/xtsm_files/bf11eaff-ea42-475f-b405-2825139cbf53.png" o:title="">
</v:shape></span><span lang="EN-US"><o:p></o:p></span></p>

<p class="MsoNormal" align="center" style="text-align:center;text-indent:24.0pt"><span style="font-family:黑体">首页界面<span lang="EN-US"><o:p></o:p></span></span></p>

<p class="MsoNormal" style="text-indent:24.0pt;mso-pagination:widow-orphan"><span style="mso-bidi-font-size:12.0pt;line-height:150%;font-family:宋体;mso-font-kerning:
0pt">首页主要作为一个作者信息的展示，整个页面由四个框架构成：<span lang="EN-US">top</span>页面、<span lang="EN-US">menu</span>页面、主页面、<span lang="EN-US">foot</span>页面。该布局遵循<span lang="EN-US">“</span>国<span lang="EN-US">”</span>字布局设计。<span lang="EN-US"><o:p></o:p></span></span></p>

<p class="MsoNormal" style="text-indent:24.0pt;mso-pagination:widow-orphan"><span style="mso-bidi-font-size:12.0pt;line-height:150%;font-family:宋体;mso-font-kerning:
0pt">作者信息包括图片都是从后台数据库得到的。<span lang="EN-US"><o:p></o:p></span></span></p>

<p class="MsoNormal" style="text-indent:24.0pt;mso-pagination:widow-orphan"><span style="mso-bidi-font-size:12.0pt;line-height:150%;font-family:宋体;mso-font-kerning:
0pt">核心代码：<span lang="EN-US"><o:p></o:p></span></span></p>

<p class="MsoNormal" align="center" style="text-align:center;text-indent:24.0pt;
mso-pagination:widow-orphan"><span lang="EN-US"><v:shape id="图片_x0020_38" o:spid="_x0000_i1070" type="#_x0000_t75" style="width:353.25pt;
 height:57pt;visibility:visible;mso-wrap-style:square">
 <img src="${base}/images/xtsm_files/7e482ce9-d0d2-4a07-89cd-60b666350fe5.png" o:title="">
</v:shape></span><span lang="EN-US" style="mso-bidi-font-size:12.0pt;line-height:
150%;font-family:宋体;mso-font-kerning:0pt"><o:p></o:p></span></p>

<h3 style="text-indent:24.0pt"><a name="_Toc416954713"><span lang="EN-US">2.3.3&nbsp; </span></a><span style="font-family:宋体;mso-ascii-font-family:黑体;mso-fareast-font-family:宋体;
mso-fareast-theme-font:minor-fareast;mso-hansi-font-family:黑体">系统管理</span><span lang="EN-US"><o:p></o:p></span></h3>

<p class="MsoNormal" style="text-indent:24.0pt;mso-pagination:widow-orphan"><span style="mso-bidi-font-size:12.0pt;line-height:150%;font-family:宋体;mso-font-kerning:
0pt">系统管理包括了三个管理模块，其中后台用户设置是对个人用户的管理，功能包括新增、编辑、查询、删除等。而角色则是对用户组的管理主要是对角色的权限管理，主要包括：新增、编辑、查询、删除等。<span lang="EN-US"><o:p></o:p></span></span></p>

<p class="MsoNormal" style="text-indent:24.0pt;mso-pagination:widow-orphan"><span style="mso-bidi-font-size:12.0pt;line-height:150%;font-family:宋体;mso-font-kerning:
0pt">注意：<span lang="EN-US">root</span>用户作为最高权限用户不会出现在用户列里。<span lang="EN-US"><o:p></o:p></span></span></p>

<p class="MsoNormal" align="center" style="text-align:center;text-indent:24.0pt"><span lang="EN-US"><v:shape id="图片_x0020_5" o:spid="_x0000_i1069" type="#_x0000_t75" style="width:414pt;height:225.75pt;visibility:visible;
 mso-wrap-style:square">
 <img src="${base}/images/xtsm_files/3c5e4971-298f-407d-b3ee-c085b8e62376.png" o:title="">
</v:shape></span><span lang="EN-US" style="mso-bidi-font-size:16.0pt;line-height:
150%;font-family:黑体;mso-fareast-font-family:宋体;mso-fareast-theme-font:minor-fareast"><o:p></o:p></span></p>

<p class="MsoNormal" align="center" style="text-align:center;text-indent:24.0pt"><span style="font-family:黑体">后台用户设置<span lang="EN-US"><o:p></o:p></span></span></p>

<p class="MsoNormal" align="center" style="text-align:center;text-indent:24.0pt"><span lang="EN-US"><v:shape id="图片_x0020_6" o:spid="_x0000_i1068" type="#_x0000_t75" style="width:406.5pt;height:222pt;visibility:visible;
 mso-wrap-style:square">
 <img src="${base}/images/xtsm_files/030d6c5c-c4d6-4414-a830-6cc03f93155d.png" o:title="">
</v:shape></span><span lang="EN-US" style="mso-bidi-font-size:16.0pt;line-height:
150%;font-family:黑体;mso-fareast-font-family:宋体;mso-fareast-theme-font:minor-fareast"><o:p></o:p></span></p>

<p class="MsoNormal" align="center" style="text-align:center;text-indent:24.0pt"><span style="font-family:黑体">角色设置<span lang="EN-US"><o:p></o:p></span></span></p>

<p class="MsoNormal" align="center" style="text-indent:24.0pt"><span lang="EN-US"><v:shape id="图片_x0020_7" o:spid="_x0000_i1067" type="#_x0000_t75" style="width:453.75pt;height:247.5pt;visibility:visible;mso-wrap-style:square">
 <img src="${base}/images/xtsm_files/32264800-e1f1-40ea-9f1c-f7adb92c6b9f.png" o:title="">
</v:shape></span><span lang="EN-US"><o:p></o:p></span></p>

<p class="MsoNormal" align="center" style="text-align:center;text-indent:24.0pt"><span style="font-family:黑体">用户新增<span lang="EN-US">/</span>编辑界面<span lang="EN-US"><o:p></o:p></span></span></p>

<p class="MsoNormal" align="center" style="text-align:center;text-indent:24.0pt"><span lang="EN-US"><v:shape id="图片_x0020_8" o:spid="_x0000_i1066" type="#_x0000_t75" style="width:453.75pt;height:247.5pt;visibility:visible;
 mso-wrap-style:square">
 <img src="${base}/images/xtsm_files/cbfeecd1-4f24-4309-8c5a-9c72bd453535.png" o:title="">
</v:shape></span><span lang="EN-US" style="font-family:黑体"><o:p></o:p></span></p>

<p class="MsoNormal" align="center" style="text-align:center;text-indent:24.0pt"><span style="font-family:黑体">角色新增<span lang="EN-US">/</span>编辑界面<span lang="EN-US"><o:p></o:p></span></span></p>

<p class="MsoNormal" align="center" style="text-align:center;text-indent:24.0pt"><span lang="EN-US"><v:shape id="图片_x0020_9" o:spid="_x0000_i1065" type="#_x0000_t75" style="width:276pt;height:117.75pt;visibility:visible;
 mso-wrap-style:square">
 <img src="${base}/images/xtsm_files/085b7cd7-219d-4000-8cd8-e56d14916594.png" o:title="">
</v:shape></span><span lang="EN-US"><o:p></o:p></span></p>

<p class="MsoNormal" align="center" style="text-align:center;text-indent:24.0pt"><span style="font-family:黑体">删除弹出通知<span lang="EN-US"><o:p></o:p></span></span></p>

<p class="MsoNormal" align="center"  style="text-indent:24.0pt"><span lang="EN-US"><v:shape id="图片_x0020_10" o:spid="_x0000_i1064" type="#_x0000_t75" style="width:453.75pt;height:247.5pt;visibility:visible;
 mso-wrap-style:square">
 <img src="${base}/images/xtsm_files/9436a1d0-3244-4b57-974c-7b4189eb5ed4.png" o:title="">
</v:shape></span><span lang="EN-US"><o:p></o:p></span></p>

<p class="MsoNormal" align="center" style="text-align:center;text-indent:24.0pt"><span style="font-family:黑体">密码修改界面<span lang="EN-US"><o:p></o:p></span></span></p>

<p class="MsoNormal" style="text-indent:24.0pt"><span style="font-family:宋体;
mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:&quot;Times New Roman&quot;">核心代码：（用户管理与角色管理各个功能使用的事件方式大致相同，这里给出用户管理的核心代码作为例举。）</span><span lang="EN-US"><o:p></o:p></span></p>

<p class="MsoNormal" style="text-indent:24.0pt"><span style="font-family:宋体;
mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:&quot;Times New Roman&quot;">列表调去：</span><span lang="EN-US"><o:p></o:p></span></p>

<p class="MsoNormal" style="text-indent:24.0pt"><span lang="EN-US"><v:shape id="图片_x0020_39" o:spid="_x0000_i1063" type="#_x0000_t75" style="width:453.75pt;height:225.75pt;visibility:visible;
 mso-wrap-style:square">
 <img src="${base}/images/xtsm_files/a8d282c7-ebaf-4e11-939f-888e18095254.png" o:title="">
</v:shape></span><span lang="EN-US"><o:p></o:p></span></p>

<p class="MsoNormal" style="text-indent:24.0pt"><span style="font-family:宋体;
mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:&quot;Times New Roman&quot;">新增</span><span lang="EN-US">/</span><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;
mso-hansi-font-family:&quot;Times New Roman&quot;">修改</span><span lang="EN-US">action</span><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:
&quot;Times New Roman&quot;">：</span><span lang="EN-US"><o:p></o:p></span></p>

<p class="MsoNormal" style="text-indent:24.0pt"><span lang="EN-US"><v:shape id="图片_x0020_40" o:spid="_x0000_i1062" type="#_x0000_t75" style="width:453pt;height:132pt;visibility:visible;
 mso-wrap-style:square">
 <img src="${base}/images/xtsm_files/e76ddc13-240f-4c39-8df8-eba79f337b05.png" o:title="">
</v:shape></span><span lang="EN-US"><o:p></o:p></span></p>

<p class="MsoNormal" style="text-indent:24.0pt"><span style="font-family:宋体;
mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:&quot;Times New Roman&quot;">删除</span><span lang="EN-US">action</span><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;
mso-hansi-font-family:&quot;Times New Roman&quot;">：</span><span lang="EN-US"><o:p></o:p></span></p>

<p class="MsoNormal" style="text-indent:24.0pt"><span lang="EN-US"><v:shape id="图片_x0020_41" o:spid="_x0000_i1061" type="#_x0000_t75" style="width:311.25pt;height:105pt;visibility:visible;
 mso-wrap-style:square">
 <img src="${base}/images/xtsm_files/b312227c-d983-4c43-954e-ee806de6afc8.png" o:title="">
</v:shape></span><span lang="EN-US"><o:p></o:p></span></p>

<p class="MsoNormal" style="text-indent:24.0pt"><span style="font-family:宋体;
mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:&quot;Times New Roman&quot;">密码修改</span><span lang="EN-US">action</span><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;
mso-hansi-font-family:&quot;Times New Roman&quot;">：</span><span lang="EN-US"><o:p></o:p></span></p>

<p class="MsoNormal" style="text-indent:24.0pt"><span lang="EN-US"><v:shape id="图片_x0020_42" o:spid="_x0000_i1060" type="#_x0000_t75" style="width:453.75pt;height:73.5pt;visibility:visible;
 mso-wrap-style:square">
 <img src="${base}/images/xtsm_files/0c734ef6-b9d3-43ef-b94a-ca12836e3495.png" o:title="">
</v:shape></span><span lang="EN-US"><o:p></o:p></span></p>

<h3 style="text-indent:24.0pt"><a name="_Toc416954714"><span lang="EN-US">2.3.4&nbsp; </span></a><span style="font-family:宋体;mso-ascii-font-family:黑体;mso-fareast-font-family:宋体;
mso-fareast-theme-font:minor-fareast;mso-hansi-font-family:黑体">关键词抽取</span><span lang="EN-US"><o:p></o:p></span></h3>

<p class="MsoNormal" style="text-indent:24.0pt"><span style="font-family:宋体;
mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:&quot;Times New Roman&quot;">关键词抽取是</span><span lang="EN-US">RKES</span><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;
mso-hansi-font-family:&quot;Times New Roman&quot;">的核心功能之一，这个功能是更清晰的展示关键词抽取的一个详细的分析逻辑展示。</span><span lang="EN-US"><o:p></o:p></span></p>

<p class="MsoNormal" align="center" style="text-align:center;text-indent:24.0pt"><span lang="EN-US"><v:shape id="图片_x0020_3" o:spid="_x0000_i1059" type="#_x0000_t75" style="width:453.75pt;height:247.5pt;visibility:visible;
 mso-wrap-style:square">
 <img src="${base}/images/xtsm_files/81a599c4-0a6d-4a42-a4b8-5f3cd3755151.png" o:title="">
</v:shape></span><span lang="EN-US"><o:p></o:p></span></p>

<p class="MsoNormal" align="center" style="text-align:center;text-indent:24.0pt"><span style="font-family:黑体">文本分析输入界面<span lang="EN-US"><o:p></o:p></span></span></p>

<p class="MsoNormal" style="text-indent:24.0pt"><span style="font-family:宋体;
mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:&quot;Times New Roman&quot;">文本分析输入界面是用户输入需要提取关键词的原文界面。输入文本后的效果如下图所示：</span><span lang="EN-US"><o:p></o:p></span></p>

<p class="MsoNormal" align="center" style="text-align:center;text-indent:24.0pt"><span lang="EN-US"><v:shape id="图片_x0020_11" o:spid="_x0000_i1058" type="#_x0000_t75" style="width:453.75pt;height:247.5pt;visibility:visible;
 mso-wrap-style:square">
 <img src="${base}/images/xtsm_files/43c20b0d-eb6a-4c55-95b7-0ddfd2fce8a9.png" o:title="">
</v:shape></span><span lang="EN-US"><o:p></o:p></span></p>

<p class="MsoNormal" align="center" style="text-align:center;text-indent:24.0pt"><span style="font-family:黑体">输入后的界面<span lang="EN-US"><o:p></o:p></span></span></p>

<p class="MsoNormal" style="text-indent:24.0pt"><span style="font-family:宋体;
mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:&quot;Times New Roman&quot;">点击提交后的弹窗：</span><span lang="EN-US"><o:p></o:p></span></p>

<p class="MsoNormal" align="center" style="text-align:center;text-indent:24.0pt"><span lang="EN-US"><v:shape id="图片_x0020_12" o:spid="_x0000_i1057" type="#_x0000_t75" style="width:276pt;height:130.5pt;visibility:visible;
 mso-wrap-style:square">
 <img src="${base}/images/xtsm_files/e61f1093-1845-439a-9ff1-3bb7502b060b.png" o:title="">
</v:shape></span><span lang="EN-US"><o:p></o:p></span></p>

<p class="MsoNormal" align="center" style="text-align:center;text-indent:24.0pt"><span style="font-family:黑体">提交成功提示界面<span lang="EN-US"><o:p></o:p></span></span></p>

<p class="MsoNormal" style="text-indent:24.0pt"><span style="font-family:宋体;
mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:&quot;Times New Roman&quot;">核心代码：</span><span lang="EN-US"><o:p></o:p></span></p>

<p class="MsoNormal" style="text-indent:24.0pt"><span style="font-family:宋体;
mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:&quot;Times New Roman&quot;">初始化界面代码：</span><span lang="EN-US"><o:p></o:p></span></p>

<p class="MsoNormal" style="text-indent:24.0pt"><span lang="EN-US"><v:shape id="图片_x0020_43" o:spid="_x0000_i1056" type="#_x0000_t75" style="width:242.25pt;height:103.5pt;visibility:visible;
 mso-wrap-style:square">
 <img src="${base}/images/xtsm_files/c4dc2e9b-56dd-4555-8b60-06b285dc15f1.png" o:title="">
</v:shape></span><span lang="EN-US"><o:p></o:p></span></p>

<p class="MsoNormal" style="text-indent:24.0pt"><span style="font-family:宋体;
mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:&quot;Times New Roman&quot;">初始化进行了一个数据库删减（</span><span lang="EN-US">truncate</span><span style="font-family:宋体;mso-ascii-font-family:
&quot;Times New Roman&quot;;mso-hansi-font-family:&quot;Times New Roman&quot;">）事件，这是因为提交是一个将原文写入数据库表（</span><span lang="EN-US">t_pt_demo_content</span><span style="font-family:宋体;mso-ascii-font-family:
&quot;Times New Roman&quot;;mso-hansi-font-family:&quot;Times New Roman&quot;">）的过程，在下次输入时需要将前次的删除掉。</span><span lang="EN-US"><o:p></o:p></span></p>

<p class="MsoNormal" style="text-indent:24.0pt"><span style="font-family:宋体;
mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:&quot;Times New Roman&quot;">提交</span><span lang="EN-US">action</span><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;
mso-hansi-font-family:&quot;Times New Roman&quot;">代码：</span><span lang="EN-US"><o:p></o:p></span></p>

<p class="MsoNormal" style="text-indent:24.0pt"><span lang="EN-US"><v:shape id="图片_x0020_44" o:spid="_x0000_i1055" type="#_x0000_t75" style="width:353.25pt;height:111.75pt;visibility:visible;
 mso-wrap-style:square">
 <img src="${base}/images/xtsm_files/eb2acc3e-6aee-4c60-8398-ea2ffbb0654b.png" o:title="">
</v:shape></span><span lang="EN-US"><o:p></o:p></span></p>

<p class="MsoNormal" style="text-indent:24.0pt"><span style="font-family:宋体;
mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:&quot;Times New Roman&quot;">这里使用</span><span lang="EN-US">if</span><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;
mso-hansi-font-family:&quot;Times New Roman&quot;">语句做判断，当执行返回</span><span lang="EN-US">true</span><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:
&quot;Times New Roman&quot;">值时执行</span><span lang="EN-US">Message</span><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:
&quot;Times New Roman&quot;">提示，同时页面跳转触发“</span><span lang="EN-US">wkeshow.do</span><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:
&quot;Times New Roman&quot;">”的</span><span lang="EN-US">action</span><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:
&quot;Times New Roman&quot;">。</span><span lang="EN-US"><o:p></o:p></span></p>

<p class="MsoNormal" style="text-indent:24.0pt"><span style="font-family:宋体;
mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:&quot;Times New Roman&quot;">下图是</span><span lang="EN-US">wkeshow</span><span style="font-family:宋体;mso-ascii-font-family:
&quot;Times New Roman&quot;;mso-hansi-font-family:&quot;Times New Roman&quot;">页面，是一个之前录入需做分析的文本从分词、标注、权重打分、展示的详细展示页面：（页面较长）</span><span lang="EN-US"><o:p></o:p></span></p>

<p class="MsoNormal" align="center" style="text-align:center;text-indent:24.0pt"><span lang="EN-US"><v:shape id="图片_x0020_14" o:spid="_x0000_i1054" type="#_x0000_t75" style="width:235.5pt;height:634.5pt;visibility:visible;
 mso-wrap-style:square">
 <img src="${base}/images/xtsm_files/92208713-abcd-4a51-88cd-3be81c50c97a.png" o:title="关键字展示">
</v:shape></span><span lang="EN-US"><o:p></o:p></span></p>

<p class="MsoNormal" align="center" style="text-align:center;text-indent:24.0pt"><span lang="EN-US" style="font-family:黑体">WKE</span><span style="font-family:黑体">展示页面<span lang="EN-US"><o:p></o:p></span></span></p>

<p class="MsoNormal" style="text-indent:24.0pt"><span style="font-family:宋体;
mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:&quot;Times New Roman&quot;">核心代码：（这里的核心代码只是展示了一个接口类的调用，其具体的算法程序将在下边章节详细介绍。）</span><span lang="EN-US"><o:p></o:p></span></p>

<p class="MsoNormal" style="text-indent:24.0pt"><span lang="EN-US"><v:shape id="图片_x0020_45" o:spid="_x0000_i1053" type="#_x0000_t75" style="width:423pt;height:357.75pt;visibility:visible;
 mso-wrap-style:square">
 <img src="${base}/images/xtsm_files/e274a4f5-e061-4169-8bb5-027b31a8055a.png" o:title="">
</v:shape></span><span lang="EN-US"><o:p></o:p></span></p>

<h3 style="text-indent:24.0pt"><a name="_Toc416954715"><span lang="EN-US">2.3.5&nbsp; Web</span></a><span style="font-family:宋体;mso-ascii-font-family:黑体;mso-fareast-font-family:宋体;
mso-fareast-theme-font:minor-fareast;mso-hansi-font-family:黑体">爬虫</span><span lang="EN-US"><o:p></o:p></span></h3>

<p class="MsoNormal" style="text-indent:24.0pt"><span lang="EN-US">Web</span><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:
&quot;Times New Roman&quot;">爬虫界面是一个爬虫管理页面，国内主要是对爬虫目标（网站）任务的增删改查，其管理逻辑与用户管理的增删改查机制一样。</span><span lang="EN-US"><o:p></o:p></span></p>

<p class="MsoNormal" align="center" style="text-indent:24.0pt"><span lang="EN-US"><v:shape id="图片_x0020_15" o:spid="_x0000_i1052" type="#_x0000_t75" style="width:453.75pt;height:247.5pt;visibility:visible;
 mso-wrap-style:square">
 <img src="${base}/images/xtsm_files/127bb99b-753c-408a-9d1e-bcaf1bf0387a.png" o:title="">
</v:shape></span><span lang="EN-US"><o:p></o:p></span></p>

<p class="MsoNormal" align="center" style="text-align:center;text-indent:24.0pt"><span lang="EN-US" style="font-family:黑体">CWM</span><span style="font-family:黑体">任务列表页面<span lang="EN-US"><o:p></o:p></span></span></p>

<p class="MsoNormal" align="center" style="text-align:center;text-indent:24.0pt"><span lang="EN-US"><v:shape id="图片_x0020_16" o:spid="_x0000_i1051" type="#_x0000_t75" style="width:453.75pt;height:247.5pt;visibility:visible;
 mso-wrap-style:square">
 <img src="${base}/images/xtsm_files/1f2cb2ab-6131-4d92-9b2b-5b52d973c228.png" o:title="">
</v:shape></span><span lang="EN-US" style="font-family:黑体"><o:p></o:p></span></p>

<p class="MsoNormal" align="center" style="text-align:center;text-indent:24.0pt"><span lang="EN-US" style="font-family:黑体">CWM</span><span style="font-family:黑体">新增<span lang="EN-US">/</span>修改页面<span lang="EN-US"><o:p></o:p></span></span></p>

<p class="MsoNormal" align="center" style="text-align:center;text-indent:24.0pt"><span lang="EN-US"><v:shape id="图片_x0020_17" o:spid="_x0000_i1050" type="#_x0000_t75" style="width:453.75pt;height:247.5pt;visibility:visible;
 mso-wrap-style:square">
 <img src="${base}/images/xtsm_files/badeb33c-cd74-4f1a-9f10-33cae7312765.png" o:title="">
</v:shape></span><span lang="EN-US" style="font-family:黑体"><o:p></o:p></span></p>

<p class="MsoNormal" align="center" style="text-align:center;text-indent:24.0pt"><span style="font-family:黑体">爬虫结果展示页面<span lang="EN-US"><o:p></o:p></span></span></p>

<p class="MsoNormal" align="center" style="text-align:center;text-indent:24.0pt"><span lang="EN-US"><v:shape id="图片_x0020_20" o:spid="_x0000_i1049" type="#_x0000_t75" style="width:453.75pt;height:247.5pt;visibility:visible;
 mso-wrap-style:square">
 <img src="${base}/images/xtsm_files/cea5dad7-6c37-4487-b288-8025247acaba.png" o:title="">
</v:shape></span><span lang="EN-US" style="font-family:黑体"><o:p></o:p></span></p>

<p class="MsoNormal" align="center" style="text-align:center;text-indent:24.0pt"><span style="font-family:黑体">新闻展示页面<span lang="EN-US"><o:p></o:p></span></span></p>

<p class="MsoNormal" style="text-indent:24.0pt"><span style="font-family:宋体;
mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:&quot;Times New Roman&quot;">核心代码：核心代码只展示与爬虫有关的代码部分。（</span><span lang="EN-US">action</span><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;
mso-hansi-font-family:&quot;Times New Roman&quot;">依旧只是调用后台</span><span lang="EN-US">service</span><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:
&quot;Times New Roman&quot;">的程序）</span><span lang="EN-US"><o:p></o:p></span></p>

<p class="MsoNormal" style="text-indent:24.0pt"><span lang="EN-US">Action.java</span><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:
&quot;Times New Roman&quot;">代码：</span><span lang="EN-US"><o:p></o:p></span></p>

<p class="MsoNormal" style="margin-left:24.0pt;mso-para-margin-left:2.0gd;
text-indent:24.0pt"><span lang="EN-US"><v:shape id="图片_x0020_46" o:spid="_x0000_i1048" type="#_x0000_t75" style="width:336pt;height:195pt;
 visibility:visible;mso-wrap-style:square">
 <img src="${base}/images/xtsm_files/f5183147-d955-4ff2-9f2f-3725a5688e51.png" o:title="">
</v:shape></span><span lang="EN-US" style="font-size: 10pt; line-height: 150%; font-family: 'Courier New';"><o:p></o:p></span></p>

<p class="MsoNormal" style="text-indent:24.0pt"><span lang="EN-US">Service</span><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:
&quot;Times New Roman&quot;">代码：</span><span lang="EN-US"><o:p></o:p></span></p>

<p class="MsoNormal" style="text-indent:24.0pt"><span lang="EN-US"><v:shape id="图片_x0020_47" o:spid="_x0000_i1047" type="#_x0000_t75" style="width:395.25pt;height:436.5pt;visibility:visible;
 mso-wrap-style:square">
 <img src="${base}/images/xtsm_files/e1ab4ea0-6c0c-4277-af4d-727efd4b29dd.png" o:title="">
</v:shape></span><span lang="EN-US"><o:p></o:p></span></p>

<h2><a name="_Toc416954716"><span lang="EN-US">2.4&nbsp; </span>数据库展示</a><span lang="EN-US"><o:p></o:p></span></h2>

<h3 style="text-indent:24.0pt"><a name="_Toc416954717"><span lang="EN-US">2.4.1&nbsp; RKES</span></a><span style="font-family:宋体;mso-ascii-font-family:黑体;mso-fareast-font-family:
宋体;mso-fareast-theme-font:minor-fareast;mso-hansi-font-family:黑体">的数据库配置</span><span lang="EN-US"><o:p></o:p></span></h3>

<p class="MsoNormal" style="text-indent:24.0pt"><span style="font-family:宋体;
mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:&quot;Times New Roman&quot;">数据库使用</span><span lang="EN-US">MySQ</span><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;
mso-hansi-font-family:&quot;Times New Roman&quot;">数据库，数据库名称：</span><span lang="EN-US">wke</span><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:
&quot;Times New Roman&quot;">，</span><span lang="EN-US">JDBC</span><span style="font-family:
宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:&quot;Times New Roman&quot;">配置文件如下：</span><span lang="EN-US"><o:p></o:p></span></p>

<p class="MsoNormal" style="text-indent:24.0pt"><span lang="EN-US"><v:shape id="图片_x0020_48" o:spid="_x0000_i1046" type="#_x0000_t75" style="width:453.75pt;height:32.25pt;visibility:visible;
 mso-wrap-style:square">
 <img src="${base}/images/xtsm_files/cb74bd87-0add-4285-9fdd-b4610c9e477b.png" o:title="">
</v:shape></span><span lang="EN-US"><o:p></o:p></span></p>

<h3 style="text-indent:24.0pt"><a name="_Toc416954718"><span lang="EN-US">2.4.2&nbsp; </span></a><span style="font-family:宋体;mso-ascii-font-family:黑体;mso-fareast-font-family:宋体;
mso-fareast-theme-font:minor-fareast;mso-hansi-font-family:黑体">数据库结构</span><span lang="EN-US"><o:p></o:p></span></h3>

<p class="MsoNormal" style="text-indent:24.0pt"><span style="font-family:宋体;
mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:&quot;Times New Roman&quot;">数据表列表：</span><span lang="EN-US"><o:p></o:p></span></p>

<div align="center">

<table class="MsoTableGrid" border="1" cellspacing="0" cellpadding="0" style="border: none;">
 <tbody><tr>
  <td width="170" valign="top" style="width: 127.35pt; border-color: windowtext; border-width: 1pt; padding: 0cm 5.4pt;">
  <p class="MsoNormal" style="text-indent:0cm;mso-char-indent-count:0"><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:
  &quot;Times New Roman&quot;">表名</span><span lang="EN-US"><o:p></o:p></span></p>
  </td>
  <td width="255" valign="top" style="width: 191.35pt; border-top-color: windowtext; border-right-color: windowtext; border-bottom-color: windowtext; border-top-width: 1pt; border-right-width: 1pt; border-bottom-width: 1pt; border-left-style: none; padding: 0cm 5.4pt;">
  <p class="MsoNormal" style="text-indent:0cm;mso-char-indent-count:0"><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:
  &quot;Times New Roman&quot;">说明</span><span lang="EN-US"><o:p></o:p></span></p>
  </td>
 </tr>
 <tr>
  <td width="170" valign="top" style="width: 127.35pt; border-right-color: windowtext; border-bottom-color: windowtext; border-left-color: windowtext; border-right-width: 1pt; border-bottom-width: 1pt; border-left-width: 1pt; border-top-style: none; padding: 0cm 5.4pt;">
  <p class="MsoNormal" style="text-indent:0cm;mso-char-indent-count:0"><span lang="EN-US">t_pt_code<o:p></o:p></span></p>
  </td>
  <td width="255" valign="top" style="width: 191.35pt; border-top-style: none; border-left-style: none; border-bottom-color: windowtext; border-bottom-width: 1pt; border-right-color: windowtext; border-right-width: 1pt; padding: 0cm 5.4pt;">
  <p class="MsoNormal" style="text-indent:0cm;mso-char-indent-count:0"><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:
  &quot;Times New Roman&quot;">网页编码表</span><span lang="EN-US"><o:p></o:p></span></p>
  </td>
 </tr>
 <tr>
  <td width="170" valign="top" style="width: 127.35pt; border-right-color: windowtext; border-bottom-color: windowtext; border-left-color: windowtext; border-right-width: 1pt; border-bottom-width: 1pt; border-left-width: 1pt; border-top-style: none; padding: 0cm 5.4pt;">
  <p class="MsoNormal" style="text-indent:0cm;mso-char-indent-count:0"><span lang="EN-US">t_pt_demo_content<o:p></o:p></span></p>
  </td>
  <td width="255" valign="top" style="width: 191.35pt; border-top-style: none; border-left-style: none; border-bottom-color: windowtext; border-bottom-width: 1pt; border-right-color: windowtext; border-right-width: 1pt; padding: 0cm 5.4pt;">
  <p class="MsoNormal" style="text-indent:0cm;mso-char-indent-count:0"><span lang="EN-US">WKE Demo </span><span style="font-family:宋体;mso-ascii-font-family:
  &quot;Times New Roman&quot;;mso-hansi-font-family:&quot;Times New Roman&quot;">分析文本存储表</span><span lang="EN-US"><o:p></o:p></span></p>
  </td>
 </tr>
 <tr>
  <td width="170" valign="top" style="width: 127.35pt; border-right-color: windowtext; border-bottom-color: windowtext; border-left-color: windowtext; border-right-width: 1pt; border-bottom-width: 1pt; border-left-width: 1pt; border-top-style: none; padding: 0cm 5.4pt;">
  <p class="MsoNormal" style="text-indent:0cm;mso-char-indent-count:0"><span lang="EN-US">t_pt_demo_web<o:p></o:p></span></p>
  </td>
  <td width="255" valign="top" style="width: 191.35pt; border-top-style: none; border-left-style: none; border-bottom-color: windowtext; border-bottom-width: 1pt; border-right-color: windowtext; border-right-width: 1pt; padding: 0cm 5.4pt;">
  <p class="MsoNormal" style="text-indent:0cm;mso-char-indent-count:0"><span lang="EN-US">CWM</span><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;
  mso-hansi-font-family:&quot;Times New Roman&quot;">爬虫任务端口（网站）表</span><span lang="EN-US"><o:p></o:p></span></p>
  </td>
 </tr>
 <tr>
  <td width="170" valign="top" style="width: 127.35pt; border-right-color: windowtext; border-bottom-color: windowtext; border-left-color: windowtext; border-right-width: 1pt; border-bottom-width: 1pt; border-left-width: 1pt; border-top-style: none; padding: 0cm 5.4pt;">
  <p class="MsoNormal" style="text-indent:0cm;mso-char-indent-count:0"><span lang="EN-US">t_pt_news<o:p></o:p></span></p>
  </td>
  <td width="255" valign="top" style="width: 191.35pt; border-top-style: none; border-left-style: none; border-bottom-color: windowtext; border-bottom-width: 1pt; border-right-color: windowtext; border-right-width: 1pt; padding: 0cm 5.4pt;">
  <p class="MsoNormal" style="text-indent:0cm;mso-char-indent-count:0"><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:
  &quot;Times New Roman&quot;">新闻存储表</span><span lang="EN-US"><o:p></o:p></span></p>
  </td>
 </tr>
 <tr>
  <td width="170" valign="top" style="width: 127.35pt; border-right-color: windowtext; border-bottom-color: windowtext; border-left-color: windowtext; border-right-width: 1pt; border-bottom-width: 1pt; border-left-width: 1pt; border-top-style: none; padding: 0cm 5.4pt;">
  <p class="MsoNormal" style="text-indent:0cm;mso-char-indent-count:0"><span lang="EN-US">t_pt_owner<o:p></o:p></span></p>
  </td>
  <td width="255" valign="top" style="width: 191.35pt; border-top-style: none; border-left-style: none; border-bottom-color: windowtext; border-bottom-width: 1pt; border-right-color: windowtext; border-right-width: 1pt; padding: 0cm 5.4pt;">
  <p class="MsoNormal" style="text-indent:0cm;mso-char-indent-count:0"><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:
  &quot;Times New Roman&quot;">作者信息表</span><span lang="EN-US"><o:p></o:p></span></p>
  </td>
 </tr>
 <tr>
  <td width="170" valign="top" style="width: 127.35pt; border-right-color: windowtext; border-bottom-color: windowtext; border-left-color: windowtext; border-right-width: 1pt; border-bottom-width: 1pt; border-left-width: 1pt; border-top-style: none; padding: 0cm 5.4pt;">
  <p class="MsoNormal" style="text-indent:0cm;mso-char-indent-count:0"><span lang="EN-US">t_pt_urllist<o:p></o:p></span></p>
  </td>
  <td width="255" valign="top" style="width: 191.35pt; border-top-style: none; border-left-style: none; border-bottom-color: windowtext; border-bottom-width: 1pt; border-right-color: windowtext; border-right-width: 1pt; padding: 0cm 5.4pt;">
  <p class="MsoNormal" style="text-indent:0cm;mso-char-indent-count:0"><span lang="EN-US">CWM </span><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;
  mso-hansi-font-family:&quot;Times New Roman&quot;">爬虫任务序列表</span><span lang="EN-US"><o:p></o:p></span></p>
  </td>
 </tr>
 <tr>
  <td width="170" valign="top" style="width: 127.35pt; border-right-color: windowtext; border-bottom-color: windowtext; border-left-color: windowtext; border-right-width: 1pt; border-bottom-width: 1pt; border-left-width: 1pt; border-top-style: none; padding: 0cm 5.4pt;">
  <p class="MsoNormal" style="text-indent:0cm;mso-char-indent-count:0"><span lang="EN-US">t_xt_gns<o:p></o:p></span></p>
  </td>
  <td width="255" valign="top" style="width: 191.35pt; border-top-style: none; border-left-style: none; border-bottom-color: windowtext; border-bottom-width: 1pt; border-right-color: windowtext; border-right-width: 1pt; padding: 0cm 5.4pt;">
  <p class="MsoNormal" style="text-indent:0cm;mso-char-indent-count:0"><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:
  &quot;Times New Roman&quot;">系统管理功能树表</span><span lang="EN-US"><o:p></o:p></span></p>
  </td>
 </tr>
 <tr>
  <td width="170" valign="top" style="width: 127.35pt; border-right-color: windowtext; border-bottom-color: windowtext; border-left-color: windowtext; border-right-width: 1pt; border-bottom-width: 1pt; border-left-width: 1pt; border-top-style: none; padding: 0cm 5.4pt;">
  <p class="MsoNormal" style="text-indent:0cm;mso-char-indent-count:0"><span lang="EN-US">t_xt_js<o:p></o:p></span></p>
  </td>
  <td width="255" valign="top" style="width: 191.35pt; border-top-style: none; border-left-style: none; border-bottom-color: windowtext; border-bottom-width: 1pt; border-right-color: windowtext; border-right-width: 1pt; padding: 0cm 5.4pt;">
  <p class="MsoNormal" style="text-indent:0cm;mso-char-indent-count:0"><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:
  &quot;Times New Roman&quot;">系统管理角色表</span><span lang="EN-US"><o:p></o:p></span></p>
  </td>
 </tr>
 <tr>
  <td width="170" valign="top" style="width: 127.35pt; border-right-color: windowtext; border-bottom-color: windowtext; border-left-color: windowtext; border-right-width: 1pt; border-bottom-width: 1pt; border-left-width: 1pt; border-top-style: none; padding: 0cm 5.4pt;">
  <p class="MsoNormal" style="text-indent:0cm;mso-char-indent-count:0"><span lang="EN-US">t_xt_js_gns<o:p></o:p></span></p>
  </td>
  <td width="255" valign="top" style="width: 191.35pt; border-top-style: none; border-left-style: none; border-bottom-color: windowtext; border-bottom-width: 1pt; border-right-color: windowtext; border-right-width: 1pt; padding: 0cm 5.4pt;">
  <p class="MsoNormal" style="text-indent:0cm;mso-char-indent-count:0"><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:
  &quot;Times New Roman&quot;">角色功能树表</span><span lang="EN-US"><o:p></o:p></span></p>
  </td>
 </tr>
 <tr>
  <td width="170" valign="top" style="width: 127.35pt; border-right-color: windowtext; border-bottom-color: windowtext; border-left-color: windowtext; border-right-width: 1pt; border-bottom-width: 1pt; border-left-width: 1pt; border-top-style: none; padding: 0cm 5.4pt;">
  <p class="MsoNormal" style="text-indent:0cm;mso-char-indent-count:0"><span lang="EN-US">t_xt_user<o:p></o:p></span></p>
  </td>
  <td width="255" valign="top" style="width: 191.35pt; border-top-style: none; border-left-style: none; border-bottom-color: windowtext; border-bottom-width: 1pt; border-right-color: windowtext; border-right-width: 1pt; padding: 0cm 5.4pt;">
  <p class="MsoNormal" style="text-indent:0cm;mso-char-indent-count:0"><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:
  &quot;Times New Roman&quot;">用户表</span><span lang="EN-US"><o:p></o:p></span></p>
  </td>
 </tr>
 <tr>
  <td width="170" valign="top" style="width: 127.35pt; border-right-color: windowtext; border-bottom-color: windowtext; border-left-color: windowtext; border-right-width: 1pt; border-bottom-width: 1pt; border-left-width: 1pt; border-top-style: none; padding: 0cm 5.4pt;">
  <p class="MsoNormal" style="text-indent:0cm;mso-char-indent-count:0"><span lang="EN-US">t_xt_user_js<o:p></o:p></span></p>
  </td>
  <td width="255" valign="top" style="width: 191.35pt; border-top-style: none; border-left-style: none; border-bottom-color: windowtext; border-bottom-width: 1pt; border-right-color: windowtext; border-right-width: 1pt; padding: 0cm 5.4pt;">
  <p class="MsoNormal" style="text-indent:0cm;mso-char-indent-count:0"><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:
  &quot;Times New Roman&quot;">用户角色表</span><span lang="EN-US"><o:p></o:p></span></p>
  </td>
 </tr>
</tbody></table>

</div>

<p class="MsoNormal" style="text-indent:24.0pt"><span style="font-family:宋体;
mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:&quot;Times New Roman&quot;">表命名规则：以“</span><span lang="EN-US">t</span><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;
mso-hansi-font-family:&quot;Times New Roman&quot;">”（</span><span lang="EN-US">table</span><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:
&quot;Times New Roman&quot;">）开头，中间字段“</span><span lang="EN-US">pt</span><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:
&quot;Times New Roman&quot;">”代表“平台”应用表；“</span><span lang="EN-US">xt</span><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:
&quot;Times New Roman&quot;">”代表“系统”管理表，后缀具体表功能。</span><span lang="EN-US"><o:p></o:p></span></p>

<h3 style="text-indent:24.0pt"><a name="_Toc416954719"><span lang="EN-US">2.4.3&nbsp; </span></a><span style="font-family:宋体;mso-ascii-font-family:黑体;mso-fareast-font-family:宋体;
mso-fareast-theme-font:minor-fareast;mso-hansi-font-family:黑体">表结构</span><span lang="EN-US"><o:p></o:p></span></h3>

<table class="MsoTableGrid" border="1" cellspacing="0" cellpadding="0" style="border: none;">
 <tbody><tr>
  <td width="604" colspan="4" valign="top" style="width: 453pt; border-color: windowtext; border-width: 1pt; padding: 0cm 5.4pt;">
  <p class="MsoNormal" align="center" style="text-align:center;text-indent:0cm;
  mso-char-indent-count:0"><span lang="EN-US">t_pt_code<o:p></o:p></span></p>
  </td>
 </tr>
 <tr>
  <td width="168" style="width: 126.05pt; border-right-color: windowtext; border-bottom-color: windowtext; border-left-color: windowtext; border-right-width: 1pt; border-bottom-width: 1pt; border-left-width: 1pt; border-top-style: none; padding: 0cm 5.4pt;">
  <p class="MsoNormal" align="center" style="text-align:center;text-indent:0cm;
  mso-char-indent-count:0"><span style="font-family:宋体;mso-ascii-font-family:
  &quot;Times New Roman&quot;;mso-hansi-font-family:&quot;Times New Roman&quot;">字段名称</span><span lang="EN-US"><o:p></o:p></span></p>
  </td>
  <td width="147" style="width: 110.35pt; border-top-style: none; border-left-style: none; border-bottom-color: windowtext; border-bottom-width: 1pt; border-right-color: windowtext; border-right-width: 1pt; padding: 0cm 5.4pt;">
  <p class="MsoNormal" align="center" style="text-align:center;text-indent:0cm;
  mso-char-indent-count:0"><span style="font-family:宋体;mso-ascii-font-family:
  &quot;Times New Roman&quot;;mso-hansi-font-family:&quot;Times New Roman&quot;">数据类型</span><span lang="EN-US"><o:p></o:p></span></p>
  </td>
  <td width="144" style="width: 108.3pt; border-top-style: none; border-left-style: none; border-bottom-color: windowtext; border-bottom-width: 1pt; border-right-color: windowtext; border-right-width: 1pt; padding: 0cm 5.4pt;">
  <p class="MsoNormal" align="center" style="text-align:center;text-indent:0cm;
  mso-char-indent-count:0"><span style="font-family:宋体;mso-ascii-font-family:
  &quot;Times New Roman&quot;;mso-hansi-font-family:&quot;Times New Roman&quot;">主键</span><span lang="EN-US"><o:p></o:p></span></p>
  </td>
  <td width="144" style="width: 108.3pt; border-top-style: none; border-left-style: none; border-bottom-color: windowtext; border-bottom-width: 1pt; border-right-color: windowtext; border-right-width: 1pt; padding: 0cm 5.4pt;">
  <p class="MsoNormal" align="center" style="text-align:center;text-indent:0cm;
  mso-char-indent-count:0"><span style="font-family:宋体;mso-ascii-font-family:
  &quot;Times New Roman&quot;;mso-hansi-font-family:&quot;Times New Roman&quot;">注释</span><span lang="EN-US"><o:p></o:p></span></p>
  </td>
 </tr>
 <tr>
  <td width="168" style="width: 126.05pt; border-right-color: windowtext; border-bottom-color: windowtext; border-left-color: windowtext; border-right-width: 1pt; border-bottom-width: 1pt; border-left-width: 1pt; border-top-style: none; padding: 0cm 5.4pt;">
  <p class="MsoNormal" align="center" style="text-align:center;text-indent:0cm;
  mso-char-indent-count:0"><span lang="EN-US">ID<o:p></o:p></span></p>
  </td>
  <td width="147" style="width: 110.35pt; border-top-style: none; border-left-style: none; border-bottom-color: windowtext; border-bottom-width: 1pt; border-right-color: windowtext; border-right-width: 1pt; padding: 0cm 5.4pt;">
  <p class="MsoNormal" align="center" style="text-align:center;text-indent:0cm;
  mso-char-indent-count:0"><span lang="EN-US">Int<o:p></o:p></span></p>
  </td>
  <td width="144" style="width: 108.3pt; border-top-style: none; border-left-style: none; border-bottom-color: windowtext; border-bottom-width: 1pt; border-right-color: windowtext; border-right-width: 1pt; padding: 0cm 5.4pt;">
  <p class="MsoNormal" align="center" style="text-align:center;text-indent:0cm;
  mso-char-indent-count:0"><span lang="EN-US">Key<o:p></o:p></span></p>
  </td>
  <td width="144" style="width: 108.3pt; border-top-style: none; border-left-style: none; border-bottom-color: windowtext; border-bottom-width: 1pt; border-right-color: windowtext; border-right-width: 1pt; padding: 0cm 5.4pt;">
  <p class="MsoNormal" align="center" style="text-align:center;text-indent:0cm;
  mso-char-indent-count:0"><span lang="EN-US">ID</span><span style="font-family:
  宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:&quot;Times New Roman&quot;">，自增</span><span lang="EN-US"><o:p></o:p></span></p>
  </td>
 </tr>
 <tr>
  <td width="168" style="width: 126.05pt; border-right-color: windowtext; border-bottom-color: windowtext; border-left-color: windowtext; border-right-width: 1pt; border-bottom-width: 1pt; border-left-width: 1pt; border-top-style: none; padding: 0cm 5.4pt;">
  <p class="MsoNormal" align="center" style="text-align:center;text-indent:0cm;
  mso-char-indent-count:0"><span lang="EN-US">Code<o:p></o:p></span></p>
  </td>
  <td width="147" style="width: 110.35pt; border-top-style: none; border-left-style: none; border-bottom-color: windowtext; border-bottom-width: 1pt; border-right-color: windowtext; border-right-width: 1pt; padding: 0cm 5.4pt;">
  <p class="MsoNormal" align="center" style="text-align:center;text-indent:0cm;
  mso-char-indent-count:0"><span lang="EN-US">varchar<o:p></o:p></span></p>
  </td>
  <td width="144" style="width: 108.3pt; border-top-style: none; border-left-style: none; border-bottom-color: windowtext; border-bottom-width: 1pt; border-right-color: windowtext; border-right-width: 1pt; padding: 0cm 5.4pt;">
  <p class="MsoNormal" align="center" style="text-align:center;text-indent:0cm;
  mso-char-indent-count:0"><span lang="EN-US"><o:p>&nbsp;</o:p></span></p>
  </td>
  <td width="144" style="width: 108.3pt; border-top-style: none; border-left-style: none; border-bottom-color: windowtext; border-bottom-width: 1pt; border-right-color: windowtext; border-right-width: 1pt; padding: 0cm 5.4pt;">
  <p class="MsoNormal" align="center" style="text-align:center;text-indent:0cm;
  mso-char-indent-count:0"><span style="font-family:宋体;mso-ascii-font-family:
  &quot;Times New Roman&quot;;mso-hansi-font-family:&quot;Times New Roman&quot;">编码规则</span><span lang="EN-US"><o:p></o:p></span></p>
  </td>
 </tr>
</tbody></table>

<p class="MsoNormal" align="left" style="text-indent: 0cm;"><span lang="EN-US"><o:p>&nbsp;</o:p></span></p>

<table class="MsoTableGrid" border="1" cellspacing="0" cellpadding="0" style="border: none;">
 <tbody><tr>
  <td width="604" colspan="4" valign="top" style="width: 453pt; border-color: windowtext; border-width: 1pt; padding: 0cm 5.4pt;">
  <p class="MsoNormal" align="center" style="text-align:center;text-indent:0cm;
  mso-char-indent-count:0"><span lang="EN-US">t_pt_demo_content<o:p></o:p></span></p>
  </td>
 </tr>
 <tr>
  <td width="168" style="width: 126.05pt; border-right-color: windowtext; border-bottom-color: windowtext; border-left-color: windowtext; border-right-width: 1pt; border-bottom-width: 1pt; border-left-width: 1pt; border-top-style: none; padding: 0cm 5.4pt;">
  <p class="MsoNormal" align="center" style="text-align:center;text-indent:0cm;
  mso-char-indent-count:0"><span style="font-family:宋体;mso-ascii-font-family:
  &quot;Times New Roman&quot;;mso-hansi-font-family:&quot;Times New Roman&quot;">字段名称</span><span lang="EN-US"><o:p></o:p></span></p>
  </td>
  <td width="147" style="width: 110.35pt; border-top-style: none; border-left-style: none; border-bottom-color: windowtext; border-bottom-width: 1pt; border-right-color: windowtext; border-right-width: 1pt; padding: 0cm 5.4pt;">
  <p class="MsoNormal" align="center" style="text-align:center;text-indent:0cm;
  mso-char-indent-count:0"><span style="font-family:宋体;mso-ascii-font-family:
  &quot;Times New Roman&quot;;mso-hansi-font-family:&quot;Times New Roman&quot;">数据类型</span><span lang="EN-US"><o:p></o:p></span></p>
  </td>
  <td width="144" style="width: 108.3pt; border-top-style: none; border-left-style: none; border-bottom-color: windowtext; border-bottom-width: 1pt; border-right-color: windowtext; border-right-width: 1pt; padding: 0cm 5.4pt;">
  <p class="MsoNormal" align="center" style="text-align:center;text-indent:0cm;
  mso-char-indent-count:0"><span style="font-family:宋体;mso-ascii-font-family:
  &quot;Times New Roman&quot;;mso-hansi-font-family:&quot;Times New Roman&quot;">主键</span><span lang="EN-US"><o:p></o:p></span></p>
  </td>
  <td width="144" style="width: 108.3pt; border-top-style: none; border-left-style: none; border-bottom-color: windowtext; border-bottom-width: 1pt; border-right-color: windowtext; border-right-width: 1pt; padding: 0cm 5.4pt;">
  <p class="MsoNormal" align="center" style="text-align:center;text-indent:0cm;
  mso-char-indent-count:0"><span style="font-family:宋体;mso-ascii-font-family:
  &quot;Times New Roman&quot;;mso-hansi-font-family:&quot;Times New Roman&quot;">注释</span><span lang="EN-US"><o:p></o:p></span></p>
  </td>
 </tr>
 <tr>
  <td width="168" style="width: 126.05pt; border-right-color: windowtext; border-bottom-color: windowtext; border-left-color: windowtext; border-right-width: 1pt; border-bottom-width: 1pt; border-left-width: 1pt; border-top-style: none; padding: 0cm 5.4pt;">
  <p class="MsoNormal" align="center" style="text-align:center;text-indent:0cm;
  mso-char-indent-count:0"><span lang="EN-US">ID<o:p></o:p></span></p>
  </td>
  <td width="147" style="width: 110.35pt; border-top-style: none; border-left-style: none; border-bottom-color: windowtext; border-bottom-width: 1pt; border-right-color: windowtext; border-right-width: 1pt; padding: 0cm 5.4pt;">
  <p class="MsoNormal" align="center" style="text-align:center;text-indent:0cm;
  mso-char-indent-count:0"><span lang="EN-US">Int<o:p></o:p></span></p>
  </td>
  <td width="144" style="width: 108.3pt; border-top-style: none; border-left-style: none; border-bottom-color: windowtext; border-bottom-width: 1pt; border-right-color: windowtext; border-right-width: 1pt; padding: 0cm 5.4pt;">
  <p class="MsoNormal" align="center" style="text-align:center;text-indent:0cm;
  mso-char-indent-count:0"><span lang="EN-US">Key<o:p></o:p></span></p>
  </td>
  <td width="144" style="width: 108.3pt; border-top-style: none; border-left-style: none; border-bottom-color: windowtext; border-bottom-width: 1pt; border-right-color: windowtext; border-right-width: 1pt; padding: 0cm 5.4pt;">
  <p class="MsoNormal" align="center" style="text-align:center;text-indent:0cm;
  mso-char-indent-count:0"><span lang="EN-US">ID</span><span style="font-family:
  宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:&quot;Times New Roman&quot;">，自增</span><span lang="EN-US"><o:p></o:p></span></p>
  </td>
 </tr>
 <tr>
  <td width="168" style="width: 126.05pt; border-right-color: windowtext; border-bottom-color: windowtext; border-left-color: windowtext; border-right-width: 1pt; border-bottom-width: 1pt; border-left-width: 1pt; border-top-style: none; padding: 0cm 5.4pt;">
  <p class="MsoNormal" align="center" style="text-align:center;text-indent:0cm;
  mso-char-indent-count:0"><span lang="EN-US">Content<o:p></o:p></span></p>
  </td>
  <td width="147" style="width: 110.35pt; border-top-style: none; border-left-style: none; border-bottom-color: windowtext; border-bottom-width: 1pt; border-right-color: windowtext; border-right-width: 1pt; padding: 0cm 5.4pt;">
  <p class="MsoNormal" align="center" style="text-align:center;text-indent:0cm;
  mso-char-indent-count:0"><span lang="EN-US">Text<o:p></o:p></span></p>
  </td>
  <td width="144" style="width: 108.3pt; border-top-style: none; border-left-style: none; border-bottom-color: windowtext; border-bottom-width: 1pt; border-right-color: windowtext; border-right-width: 1pt; padding: 0cm 5.4pt;">
  <p class="MsoNormal" align="center" style="text-align:center;text-indent:0cm;
  mso-char-indent-count:0"><span lang="EN-US"><o:p>&nbsp;</o:p></span></p>
  </td>
  <td width="144" style="width: 108.3pt; border-top-style: none; border-left-style: none; border-bottom-color: windowtext; border-bottom-width: 1pt; border-right-color: windowtext; border-right-width: 1pt; padding: 0cm 5.4pt;">
  <p class="MsoNormal" align="center" style="text-align:center;text-indent:0cm;
  mso-char-indent-count:0"><span style="font-family:宋体;mso-ascii-font-family:
  &quot;Times New Roman&quot;;mso-hansi-font-family:&quot;Times New Roman&quot;">文本</span><span lang="EN-US"><o:p></o:p></span></p>
  </td>
 </tr>
</tbody></table>

<p class="MsoNormal" align="left" style="text-indent: 0cm;"><span lang="EN-US"><o:p>&nbsp;</o:p></span></p>

<div align="center">

<table class="MsoTableGrid" border="1" cellspacing="0" cellpadding="0" width="100%" style="width: 100%; border: none;">
 <tbody><tr style="mso-yfti-irow:0;mso-yfti-firstrow:yes;height:24.45pt">
  <td width="100%" colspan="4" style="width: 100%; border-color: windowtext; border-width: 1pt; padding: 0cm 5.4pt; height: 24.45pt;">
  <p class="MsoNormal" align="center" style="text-align:center;text-indent:0cm;
  mso-char-indent-count:0"><span lang="EN-US">t_pt_demo_web<o:p></o:p></span></p>
  </td>
 </tr>
 <tr style="mso-yfti-irow:1;height:24.45pt">
  <td width="25%" style="width: 25%; border-right-color: windowtext; border-bottom-color: windowtext; border-left-color: windowtext; border-right-width: 1pt; border-bottom-width: 1pt; border-left-width: 1pt; border-top-style: none; padding: 0cm 5.4pt; height: 24.45pt;">
  <p class="MsoNormal" align="center" style="text-align:center;text-indent:0cm;
  mso-char-indent-count:0"><span style="font-family:宋体;mso-ascii-font-family:
  &quot;Times New Roman&quot;;mso-hansi-font-family:&quot;Times New Roman&quot;">字段名称</span><span lang="EN-US"><o:p></o:p></span></p>
  </td>
  <td width="25%" style="width: 25%; border-top-style: none; border-left-style: none; border-bottom-color: windowtext; border-bottom-width: 1pt; border-right-color: windowtext; border-right-width: 1pt; padding: 0cm 5.4pt; height: 24.45pt;">
  <p class="MsoNormal" align="center" style="text-align:center;text-indent:0cm;
  mso-char-indent-count:0"><span style="font-family:宋体;mso-ascii-font-family:
  &quot;Times New Roman&quot;;mso-hansi-font-family:&quot;Times New Roman&quot;">数据类型</span><span lang="EN-US"><o:p></o:p></span></p>
  </td>
  <td width="25%" style="width: 25%; border-top-style: none; border-left-style: none; border-bottom-color: windowtext; border-bottom-width: 1pt; border-right-color: windowtext; border-right-width: 1pt; padding: 0cm 5.4pt; height: 24.45pt;">
  <p class="MsoNormal" align="center" style="text-align:center;text-indent:0cm;
  mso-char-indent-count:0"><span style="font-family:宋体;mso-ascii-font-family:
  &quot;Times New Roman&quot;;mso-hansi-font-family:&quot;Times New Roman&quot;">主键</span><span lang="EN-US"><o:p></o:p></span></p>
  </td>
  <td width="25%" style="width: 25%; border-top-style: none; border-left-style: none; border-bottom-color: windowtext; border-bottom-width: 1pt; border-right-color: windowtext; border-right-width: 1pt; padding: 0cm 5.4pt; height: 24.45pt;">
  <p class="MsoNormal" align="center" style="text-align:center;text-indent:0cm;
  mso-char-indent-count:0"><span style="font-family:宋体;mso-ascii-font-family:
  &quot;Times New Roman&quot;;mso-hansi-font-family:&quot;Times New Roman&quot;">注释</span><span lang="EN-US"><o:p></o:p></span></p>
  </td>
 </tr>
 <tr style="mso-yfti-irow:2;height:24.45pt">
  <td width="25%" style="width: 25%; border-right-color: windowtext; border-bottom-color: windowtext; border-left-color: windowtext; border-right-width: 1pt; border-bottom-width: 1pt; border-left-width: 1pt; border-top-style: none; padding: 0cm 5.4pt; height: 24.45pt;">
  <p class="MsoNormal" align="center" style="text-align:center;text-indent:0cm;
  mso-char-indent-count:0"><span lang="EN-US">ID<o:p></o:p></span></p>
  </td>
  <td width="25%" valign="top" style="width: 25%; border-top-style: none; border-left-style: none; border-bottom-color: windowtext; border-bottom-width: 1pt; border-right-color: windowtext; border-right-width: 1pt; padding: 0cm 5.4pt; height: 24.45pt;">
  <p class="MsoNormal" style="text-indent:24.0pt"><span lang="EN-US">int<o:p></o:p></span></p>
  </td>
  <td width="25%" style="width: 25%; border-top-style: none; border-left-style: none; border-bottom-color: windowtext; border-bottom-width: 1pt; border-right-color: windowtext; border-right-width: 1pt; padding: 0cm 5.4pt; height: 24.45pt;">
  <p class="MsoNormal" align="center" style="text-align:center;text-indent:0cm;
  mso-char-indent-count:0"><span lang="EN-US">Key<o:p></o:p></span></p>
  </td>
  <td width="25%" style="width: 25%; border-top-style: none; border-left-style: none; border-bottom-color: windowtext; border-bottom-width: 1pt; border-right-color: windowtext; border-right-width: 1pt; padding: 0cm 5.4pt; height: 24.45pt;">
  <p class="MsoNormal" align="center" style="text-align:center;text-indent:0cm;
  mso-char-indent-count:0"><span lang="EN-US">ID</span><span style="font-family:
  宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:&quot;Times New Roman&quot;">，自增</span><span lang="EN-US"><o:p></o:p></span></p>
  </td>
 </tr>
 <tr style="mso-yfti-irow:3;height:24.45pt">
  <td width="25%" style="width: 25%; border-right-color: windowtext; border-bottom-color: windowtext; border-left-color: windowtext; border-right-width: 1pt; border-bottom-width: 1pt; border-left-width: 1pt; border-top-style: none; padding: 0cm 5.4pt; height: 24.45pt;">
  <p class="MsoNormal" align="center" style="text-align:center;text-indent:0cm;
  mso-char-indent-count:0"><span lang="EN-US">webname<o:p></o:p></span></p>
  </td>
  <td width="25%" valign="top" style="width: 25%; border-top-style: none; border-left-style: none; border-bottom-color: windowtext; border-bottom-width: 1pt; border-right-color: windowtext; border-right-width: 1pt; padding: 0cm 5.4pt; height: 24.45pt;">
  <p class="MsoNormal" style="text-indent:24.0pt"><span lang="EN-US">varchar<o:p></o:p></span></p>
  </td>
  <td width="25%" style="width: 25%; border-top-style: none; border-left-style: none; border-bottom-color: windowtext; border-bottom-width: 1pt; border-right-color: windowtext; border-right-width: 1pt; padding: 0cm 5.4pt; height: 24.45pt;">
  <p class="MsoNormal" align="center" style="text-align:center;text-indent:0cm;
  mso-char-indent-count:0"><span lang="EN-US"><o:p>&nbsp;</o:p></span></p>
  </td>
  <td width="25%" style="width: 25%; border-top-style: none; border-left-style: none; border-bottom-color: windowtext; border-bottom-width: 1pt; border-right-color: windowtext; border-right-width: 1pt; padding: 0cm 5.4pt; height: 24.45pt;">
  <p class="MsoNormal" align="center" style="text-align:center;text-indent:0cm;
  mso-char-indent-count:0"><span lang="EN-US">web</span><span style="font-family:
  宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:&quot;Times New Roman&quot;">名称</span><span lang="EN-US"><o:p></o:p></span></p>
  </td>
 </tr>
 <tr style="mso-yfti-irow:4;height:24.45pt">
  <td width="25%" style="width: 25%; border-right-color: windowtext; border-bottom-color: windowtext; border-left-color: windowtext; border-right-width: 1pt; border-bottom-width: 1pt; border-left-width: 1pt; border-top-style: none; padding: 0cm 5.4pt; height: 24.45pt;">
  <p class="MsoNormal" align="center" style="text-align:center;text-indent:0cm;
  mso-char-indent-count:0"><span lang="EN-US">weburl<o:p></o:p></span></p>
  </td>
  <td width="25%" valign="top" style="width: 25%; border-top-style: none; border-left-style: none; border-bottom-color: windowtext; border-bottom-width: 1pt; border-right-color: windowtext; border-right-width: 1pt; padding: 0cm 5.4pt; height: 24.45pt;">
  <p class="MsoNormal" style="text-indent:24.0pt"><span lang="EN-US">varchar<o:p></o:p></span></p>
  </td>
  <td width="25%" style="width: 25%; border-top-style: none; border-left-style: none; border-bottom-color: windowtext; border-bottom-width: 1pt; border-right-color: windowtext; border-right-width: 1pt; padding: 0cm 5.4pt; height: 24.45pt;">
  <p class="MsoNormal" align="center" style="text-align:center;text-indent:0cm;
  mso-char-indent-count:0"><span lang="EN-US"><o:p>&nbsp;</o:p></span></p>
  </td>
  <td width="25%" style="width: 25%; border-top-style: none; border-left-style: none; border-bottom-color: windowtext; border-bottom-width: 1pt; border-right-color: windowtext; border-right-width: 1pt; padding: 0cm 5.4pt; height: 24.45pt;">
  <p class="MsoNormal" align="center" style="text-align:center;text-indent:0cm;
  mso-char-indent-count:0"><span style="font-family:宋体;mso-ascii-font-family:
  &quot;Times New Roman&quot;;mso-hansi-font-family:&quot;Times New Roman&quot;">域名</span><span lang="EN-US"><o:p></o:p></span></p>
  </td>
 </tr>
 <tr style="mso-yfti-irow:5;height:24.45pt">
  <td width="25%" style="width: 25%; border-right-color: windowtext; border-bottom-color: windowtext; border-left-color: windowtext; border-right-width: 1pt; border-bottom-width: 1pt; border-left-width: 1pt; border-top-style: none; padding: 0cm 5.4pt; height: 24.45pt;">
  <p class="MsoNormal" align="center" style="text-align:center;text-indent:0cm;
  mso-char-indent-count:0"><span lang="EN-US">code<o:p></o:p></span></p>
  </td>
  <td width="25%" valign="top" style="width: 25%; border-top-style: none; border-left-style: none; border-bottom-color: windowtext; border-bottom-width: 1pt; border-right-color: windowtext; border-right-width: 1pt; padding: 0cm 5.4pt; height: 24.45pt;">
  <p class="MsoNormal" style="text-indent:24.0pt"><span lang="EN-US">varchar<o:p></o:p></span></p>
  </td>
  <td width="25%" style="width: 25%; border-top-style: none; border-left-style: none; border-bottom-color: windowtext; border-bottom-width: 1pt; border-right-color: windowtext; border-right-width: 1pt; padding: 0cm 5.4pt; height: 24.45pt;">
  <p class="MsoNormal" align="center" style="text-align:center;text-indent:0cm;
  mso-char-indent-count:0"><span lang="EN-US"><o:p>&nbsp;</o:p></span></p>
  </td>
  <td width="25%" style="width: 25%; border-top-style: none; border-left-style: none; border-bottom-color: windowtext; border-bottom-width: 1pt; border-right-color: windowtext; border-right-width: 1pt; padding: 0cm 5.4pt; height: 24.45pt;">
  <p class="MsoNormal" align="center" style="text-align:center;text-indent:0cm;
  mso-char-indent-count:0"><span style="font-family:宋体;mso-ascii-font-family:
  &quot;Times New Roman&quot;;mso-hansi-font-family:&quot;Times New Roman&quot;">编码规则</span><span lang="EN-US"><o:p></o:p></span></p>
  </td>
 </tr>
 <tr style="mso-yfti-irow:6;height:24.45pt">
  <td width="25%" style="width: 25%; border-right-color: windowtext; border-bottom-color: windowtext; border-left-color: windowtext; border-right-width: 1pt; border-bottom-width: 1pt; border-left-width: 1pt; border-top-style: none; padding: 0cm 5.4pt; height: 24.45pt;">
  <p class="MsoNormal" align="center" style="text-align:center;text-indent:0cm;
  mso-char-indent-count:0"><span lang="EN-US">url_re<o:p></o:p></span></p>
  </td>
  <td width="25%" valign="top" style="width: 25%; border-top-style: none; border-left-style: none; border-bottom-color: windowtext; border-bottom-width: 1pt; border-right-color: windowtext; border-right-width: 1pt; padding: 0cm 5.4pt; height: 24.45pt;">
  <p class="MsoNormal" style="text-indent:24.0pt"><span lang="EN-US">varchar<o:p></o:p></span></p>
  </td>
  <td width="25%" style="width: 25%; border-top-style: none; border-left-style: none; border-bottom-color: windowtext; border-bottom-width: 1pt; border-right-color: windowtext; border-right-width: 1pt; padding: 0cm 5.4pt; height: 24.45pt;">
  <p class="MsoNormal" align="center" style="text-align:center;text-indent:0cm;
  mso-char-indent-count:0"><span lang="EN-US"><o:p>&nbsp;</o:p></span></p>
  </td>
  <td width="25%" style="width: 25%; border-top-style: none; border-left-style: none; border-bottom-color: windowtext; border-bottom-width: 1pt; border-right-color: windowtext; border-right-width: 1pt; padding: 0cm 5.4pt; height: 24.45pt;">
  <p class="MsoNormal" align="center" style="text-align:center;text-indent:0cm;
  mso-char-indent-count:0"><span lang="EN-US">url</span><span style="font-family:
  宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:&quot;Times New Roman&quot;">正则</span><span lang="EN-US"><o:p></o:p></span></p>
  </td>
 </tr>
 <tr style="mso-yfti-irow:7;height:24.45pt">
  <td width="25%" style="width: 25%; border-right-color: windowtext; border-bottom-color: windowtext; border-left-color: windowtext; border-right-width: 1pt; border-bottom-width: 1pt; border-left-width: 1pt; border-top-style: none; padding: 0cm 5.4pt; height: 24.45pt;">
  <p class="MsoNormal" align="center" style="text-align:center;text-indent:0cm;
  mso-char-indent-count:0"><span lang="EN-US">title_re<o:p></o:p></span></p>
  </td>
  <td width="25%" valign="top" style="width: 25%; border-top-style: none; border-left-style: none; border-bottom-color: windowtext; border-bottom-width: 1pt; border-right-color: windowtext; border-right-width: 1pt; padding: 0cm 5.4pt; height: 24.45pt;">
  <p class="MsoNormal" style="text-indent:24.0pt"><span lang="EN-US">varchar<o:p></o:p></span></p>
  </td>
  <td width="25%" style="width: 25%; border-top-style: none; border-left-style: none; border-bottom-color: windowtext; border-bottom-width: 1pt; border-right-color: windowtext; border-right-width: 1pt; padding: 0cm 5.4pt; height: 24.45pt;">
  <p class="MsoNormal" align="center" style="text-align:center;text-indent:0cm;
  mso-char-indent-count:0"><span lang="EN-US"><o:p>&nbsp;</o:p></span></p>
  </td>
  <td width="25%" style="width: 25%; border-top-style: none; border-left-style: none; border-bottom-color: windowtext; border-bottom-width: 1pt; border-right-color: windowtext; border-right-width: 1pt; padding: 0cm 5.4pt; height: 24.45pt;">
  <p class="MsoNormal" align="center" style="text-align:center;text-indent:0cm;
  mso-char-indent-count:0"><span style="font-family:宋体;mso-ascii-font-family:
  &quot;Times New Roman&quot;;mso-hansi-font-family:&quot;Times New Roman&quot;">标题正则</span><span lang="EN-US"><o:p></o:p></span></p>
  </td>
 </tr>
 <tr style="mso-yfti-irow:8;height:24.45pt">
  <td width="25%" style="width: 25%; border-right-color: windowtext; border-bottom-color: windowtext; border-left-color: windowtext; border-right-width: 1pt; border-bottom-width: 1pt; border-left-width: 1pt; border-top-style: none; padding: 0cm 5.4pt; height: 24.45pt;">
  <p class="MsoNormal" align="center" style="text-align:center;text-indent:0cm;
  mso-char-indent-count:0"><span lang="EN-US">context_re<o:p></o:p></span></p>
  </td>
  <td width="25%" valign="top" style="width: 25%; border-top-style: none; border-left-style: none; border-bottom-color: windowtext; border-bottom-width: 1pt; border-right-color: windowtext; border-right-width: 1pt; padding: 0cm 5.4pt; height: 24.45pt;">
  <p class="MsoNormal" style="text-indent:24.0pt"><span lang="EN-US">text<o:p></o:p></span></p>
  </td>
  <td width="25%" style="width: 25%; border-top-style: none; border-left-style: none; border-bottom-color: windowtext; border-bottom-width: 1pt; border-right-color: windowtext; border-right-width: 1pt; padding: 0cm 5.4pt; height: 24.45pt;">
  <p class="MsoNormal" align="center" style="text-align:center;text-indent:0cm;
  mso-char-indent-count:0"><span lang="EN-US"><o:p>&nbsp;</o:p></span></p>
  </td>
  <td width="25%" style="width: 25%; border-top-style: none; border-left-style: none; border-bottom-color: windowtext; border-bottom-width: 1pt; border-right-color: windowtext; border-right-width: 1pt; padding: 0cm 5.4pt; height: 24.45pt;">
  <p class="MsoNormal" align="center" style="text-align:center;text-indent:0cm;
  mso-char-indent-count:0"><span style="font-family:宋体;mso-ascii-font-family:
  &quot;Times New Roman&quot;;mso-hansi-font-family:&quot;Times New Roman&quot;">正文正则</span><span lang="EN-US"><o:p></o:p></span></p>
  </td>
 </tr>
 <tr style="mso-yfti-irow:9;height:24.45pt">
  <td width="25%" style="width: 25%; border-right-color: windowtext; border-bottom-color: windowtext; border-left-color: windowtext; border-right-width: 1pt; border-bottom-width: 1pt; border-left-width: 1pt; border-top-style: none; padding: 0cm 5.4pt; height: 24.45pt;">
  <p class="MsoNormal" align="center" style="text-align:center;text-indent:0cm;
  mso-char-indent-count:0"><span lang="EN-US">jointime<o:p></o:p></span></p>
  </td>
  <td width="25%" valign="top" style="width: 25%; border-top-style: none; border-left-style: none; border-bottom-color: windowtext; border-bottom-width: 1pt; border-right-color: windowtext; border-right-width: 1pt; padding: 0cm 5.4pt; height: 24.45pt;">
  <p class="MsoNormal" style="text-indent:24.0pt"><span lang="EN-US">datetime<o:p></o:p></span></p>
  </td>
  <td width="25%" valign="top" style="width: 25%; border-top-style: none; border-left-style: none; border-bottom-color: windowtext; border-bottom-width: 1pt; border-right-color: windowtext; border-right-width: 1pt; padding: 0cm 5.4pt; height: 24.45pt;">
  <p class="MsoNormal" align="left" style="text-indent: 0cm;"><span lang="EN-US"><o:p>&nbsp;</o:p></span></p>
  </td>
  <td width="25%" valign="top" style="width: 25%; border-top-style: none; border-left-style: none; border-bottom-color: windowtext; border-bottom-width: 1pt; border-right-color: windowtext; border-right-width: 1pt; padding: 0cm 5.4pt; height: 24.45pt;">
  <p class="MsoNormal" align="left" style="text-indent: 0cm;"><span style="font-family:宋体;mso-ascii-font-family:
  &quot;Times New Roman&quot;;mso-hansi-font-family:&quot;Times New Roman&quot;">创建时间</span><span lang="EN-US"><o:p></o:p></span></p>
  </td>
 </tr>
 <tr style="mso-yfti-irow:10;mso-yfti-lastrow:yes;height:24.45pt">
  <td width="25%" style="width: 25%; border-right-color: windowtext; border-bottom-color: windowtext; border-left-color: windowtext; border-right-width: 1pt; border-bottom-width: 1pt; border-left-width: 1pt; border-top-style: none; padding: 0cm 5.4pt; height: 24.45pt;">
  <p class="MsoNormal" align="center" style="text-align:center;text-indent:0cm;
  mso-char-indent-count:0"><span lang="EN-US">yxbj<o:p></o:p></span></p>
  </td>
  <td width="25%" valign="top" style="width: 25%; border-top-style: none; border-left-style: none; border-bottom-color: windowtext; border-bottom-width: 1pt; border-right-color: windowtext; border-right-width: 1pt; padding: 0cm 5.4pt; height: 24.45pt;">
  <p class="MsoNormal" style="text-indent:24.0pt"><span lang="EN-US">int<o:p></o:p></span></p>
  </td>
  <td width="25%" valign="top" style="width: 25%; border-top-style: none; border-left-style: none; border-bottom-color: windowtext; border-bottom-width: 1pt; border-right-color: windowtext; border-right-width: 1pt; padding: 0cm 5.4pt; height: 24.45pt;">
  <p class="MsoNormal" align="left" style="text-indent: 0cm;"><span lang="EN-US"><o:p>&nbsp;</o:p></span></p>
  </td>
  <td width="25%" valign="top" style="width: 25%; border-top-style: none; border-left-style: none; border-bottom-color: windowtext; border-bottom-width: 1pt; border-right-color: windowtext; border-right-width: 1pt; padding: 0cm 5.4pt; height: 24.45pt;">
  <p class="MsoNormal" align="left" style="text-indent: 0cm;"><span style="font-family:宋体;mso-ascii-font-family:
  &quot;Times New Roman&quot;;mso-hansi-font-family:&quot;Times New Roman&quot;">有效标记，默认</span><span lang="EN-US">1<o:p></o:p></span></p>
  </td>
 </tr>
</tbody></table>

</div>

<p class="MsoNormal" align="left" style="text-indent: 0cm;"><span lang="EN-US"><o:p>&nbsp;</o:p></span></p>

<table class="MsoTableGrid" border="1" cellspacing="0" cellpadding="0" style="border: none;">
 <tbody><tr>
  <td width="604" colspan="4" style="width: 453pt; border-color: windowtext; border-width: 1pt; padding: 0cm 5.4pt;">
  <p class="MsoNormal" align="center" style="text-align:center;text-indent:0cm;
  mso-char-indent-count:0"><span lang="EN-US">t_pt_news<o:p></o:p></span></p>
  </td>
 </tr>
 <tr>
  <td width="151" style="width: 113.25pt; border-right-color: windowtext; border-bottom-color: windowtext; border-left-color: windowtext; border-right-width: 1pt; border-bottom-width: 1pt; border-left-width: 1pt; border-top-style: none; padding: 0cm 5.4pt;">
  <p class="MsoNormal" align="center" style="text-align:center;text-indent:0cm;
  mso-char-indent-count:0"><span style="font-family:宋体;mso-ascii-font-family:
  &quot;Times New Roman&quot;;mso-hansi-font-family:&quot;Times New Roman&quot;">字段名称</span><span lang="EN-US"><o:p></o:p></span></p>
  </td>
  <td width="151" style="width: 113.25pt; border-top-style: none; border-left-style: none; border-bottom-color: windowtext; border-bottom-width: 1pt; border-right-color: windowtext; border-right-width: 1pt; padding: 0cm 5.4pt;">
  <p class="MsoNormal" align="center" style="text-align:center;text-indent:0cm;
  mso-char-indent-count:0"><span style="font-family:宋体;mso-ascii-font-family:
  &quot;Times New Roman&quot;;mso-hansi-font-family:&quot;Times New Roman&quot;">数据类型</span><span lang="EN-US"><o:p></o:p></span></p>
  </td>
  <td width="151" style="width: 113.25pt; border-top-style: none; border-left-style: none; border-bottom-color: windowtext; border-bottom-width: 1pt; border-right-color: windowtext; border-right-width: 1pt; padding: 0cm 5.4pt;">
  <p class="MsoNormal" align="center" style="text-align:center;text-indent:0cm;
  mso-char-indent-count:0"><span style="font-family:宋体;mso-ascii-font-family:
  &quot;Times New Roman&quot;;mso-hansi-font-family:&quot;Times New Roman&quot;">主键</span><span lang="EN-US"><o:p></o:p></span></p>
  </td>
  <td width="151" style="width: 113.25pt; border-top-style: none; border-left-style: none; border-bottom-color: windowtext; border-bottom-width: 1pt; border-right-color: windowtext; border-right-width: 1pt; padding: 0cm 5.4pt;">
  <p class="MsoNormal" align="center" style="text-align:center;text-indent:0cm;
  mso-char-indent-count:0"><span style="font-family:宋体;mso-ascii-font-family:
  &quot;Times New Roman&quot;;mso-hansi-font-family:&quot;Times New Roman&quot;">注释</span><span lang="EN-US"><o:p></o:p></span></p>
  </td>
 </tr>
 <tr>
  <td width="151" valign="top" style="width: 113.25pt; border-right-color: windowtext; border-bottom-color: windowtext; border-left-color: windowtext; border-right-width: 1pt; border-bottom-width: 1pt; border-left-width: 1pt; border-top-style: none; padding: 0cm 5.4pt;">
  <p class="MsoNormal" style="text-indent:24.0pt"><span lang="EN-US">ID<o:p></o:p></span></p>
  </td>
  <td width="151" valign="top" style="width: 113.25pt; border-top-style: none; border-left-style: none; border-bottom-color: windowtext; border-bottom-width: 1pt; border-right-color: windowtext; border-right-width: 1pt; padding: 0cm 5.4pt;">
  <p class="MsoNormal" style="text-indent:24.0pt"><span lang="EN-US">int<o:p></o:p></span></p>
  </td>
  <td width="151" style="width: 113.25pt; border-top-style: none; border-left-style: none; border-bottom-color: windowtext; border-bottom-width: 1pt; border-right-color: windowtext; border-right-width: 1pt; padding: 0cm 5.4pt;">
  <p class="MsoNormal" align="center" style="text-align:center;text-indent:0cm;
  mso-char-indent-count:0"><span lang="EN-US">Key<o:p></o:p></span></p>
  </td>
  <td width="151" style="width: 113.25pt; border-top-style: none; border-left-style: none; border-bottom-color: windowtext; border-bottom-width: 1pt; border-right-color: windowtext; border-right-width: 1pt; padding: 0cm 5.4pt;">
  <p class="MsoNormal" align="center" style="text-align:center;text-indent:0cm;
  mso-char-indent-count:0"><span lang="EN-US">ID</span><span style="font-family:
  宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:&quot;Times New Roman&quot;">，自增</span><span lang="EN-US"><o:p></o:p></span></p>
  </td>
 </tr>
 <tr>
  <td width="151" valign="top" style="width: 113.25pt; border-right-color: windowtext; border-bottom-color: windowtext; border-left-color: windowtext; border-right-width: 1pt; border-bottom-width: 1pt; border-left-width: 1pt; border-top-style: none; padding: 0cm 5.4pt;">
  <p class="MsoNormal" style="text-indent:24.0pt"><span lang="EN-US">hostid<o:p></o:p></span></p>
  </td>
  <td width="151" valign="top" style="width: 113.25pt; border-top-style: none; border-left-style: none; border-bottom-color: windowtext; border-bottom-width: 1pt; border-right-color: windowtext; border-right-width: 1pt; padding: 0cm 5.4pt;">
  <p class="MsoNormal" style="text-indent:24.0pt"><span lang="EN-US">int<o:p></o:p></span></p>
  </td>
  <td width="151" style="width: 113.25pt; border-top-style: none; border-left-style: none; border-bottom-color: windowtext; border-bottom-width: 1pt; border-right-color: windowtext; border-right-width: 1pt; padding: 0cm 5.4pt;">
  <p class="MsoNormal" align="center" style="text-align:center;text-indent:0cm;
  mso-char-indent-count:0"><span lang="EN-US"><o:p>&nbsp;</o:p></span></p>
  </td>
  <td width="151" style="width: 113.25pt; border-top-style: none; border-left-style: none; border-bottom-color: windowtext; border-bottom-width: 1pt; border-right-color: windowtext; border-right-width: 1pt; padding: 0cm 5.4pt;">
  <p class="MsoNormal" align="center" style="text-align:center;text-indent:0cm;
  mso-char-indent-count:0"><span style="font-family:宋体;mso-ascii-font-family:
  &quot;Times New Roman&quot;;mso-hansi-font-family:&quot;Times New Roman&quot;">域名</span><span lang="EN-US">ID<o:p></o:p></span></p>
  </td>
 </tr>
 <tr>
  <td width="151" valign="top" style="width: 113.25pt; border-right-color: windowtext; border-bottom-color: windowtext; border-left-color: windowtext; border-right-width: 1pt; border-bottom-width: 1pt; border-left-width: 1pt; border-top-style: none; padding: 0cm 5.4pt;">
  <p class="MsoNormal" style="text-indent:24.0pt"><span lang="EN-US">title<o:p></o:p></span></p>
  </td>
  <td width="151" valign="top" style="width: 113.25pt; border-top-style: none; border-left-style: none; border-bottom-color: windowtext; border-bottom-width: 1pt; border-right-color: windowtext; border-right-width: 1pt; padding: 0cm 5.4pt;">
  <p class="MsoNormal" style="text-indent:24.0pt"><span lang="EN-US">varchar<o:p></o:p></span></p>
  </td>
  <td width="151" style="width: 113.25pt; border-top-style: none; border-left-style: none; border-bottom-color: windowtext; border-bottom-width: 1pt; border-right-color: windowtext; border-right-width: 1pt; padding: 0cm 5.4pt;">
  <p class="MsoNormal" align="center" style="text-align:center;text-indent:0cm;
  mso-char-indent-count:0"><span lang="EN-US"><o:p>&nbsp;</o:p></span></p>
  </td>
  <td width="151" style="width: 113.25pt; border-top-style: none; border-left-style: none; border-bottom-color: windowtext; border-bottom-width: 1pt; border-right-color: windowtext; border-right-width: 1pt; padding: 0cm 5.4pt;">
  <p class="MsoNormal" align="center" style="text-align:center;text-indent:0cm;
  mso-char-indent-count:0"><span style="font-family:宋体;mso-ascii-font-family:
  &quot;Times New Roman&quot;;mso-hansi-font-family:&quot;Times New Roman&quot;">标题</span><span lang="EN-US"><o:p></o:p></span></p>
  </td>
 </tr>
 <tr>
  <td width="151" valign="top" style="width: 113.25pt; border-right-color: windowtext; border-bottom-color: windowtext; border-left-color: windowtext; border-right-width: 1pt; border-bottom-width: 1pt; border-left-width: 1pt; border-top-style: none; padding: 0cm 5.4pt;">
  <p class="MsoNormal" style="text-indent:24.0pt"><span lang="EN-US">context<o:p></o:p></span></p>
  </td>
  <td width="151" valign="top" style="width: 113.25pt; border-top-style: none; border-left-style: none; border-bottom-color: windowtext; border-bottom-width: 1pt; border-right-color: windowtext; border-right-width: 1pt; padding: 0cm 5.4pt;">
  <p class="MsoNormal" style="text-indent:24.0pt"><span lang="EN-US">text<o:p></o:p></span></p>
  </td>
  <td width="151" style="width: 113.25pt; border-top-style: none; border-left-style: none; border-bottom-color: windowtext; border-bottom-width: 1pt; border-right-color: windowtext; border-right-width: 1pt; padding: 0cm 5.4pt;">
  <p class="MsoNormal" align="center" style="text-align:center;text-indent:0cm;
  mso-char-indent-count:0"><span lang="EN-US"><o:p>&nbsp;</o:p></span></p>
  </td>
  <td width="151" style="width: 113.25pt; border-top-style: none; border-left-style: none; border-bottom-color: windowtext; border-bottom-width: 1pt; border-right-color: windowtext; border-right-width: 1pt; padding: 0cm 5.4pt;">
  <p class="MsoNormal" align="center" style="text-align:center;text-indent:0cm;
  mso-char-indent-count:0"><span style="font-family:宋体;mso-ascii-font-family:
  &quot;Times New Roman&quot;;mso-hansi-font-family:&quot;Times New Roman&quot;">正文</span><span lang="EN-US"><o:p></o:p></span></p>
  </td>
 </tr>
 <tr>
  <td width="151" valign="top" style="width: 113.25pt; border-right-color: windowtext; border-bottom-color: windowtext; border-left-color: windowtext; border-right-width: 1pt; border-bottom-width: 1pt; border-left-width: 1pt; border-top-style: none; padding: 0cm 5.4pt;">
  <p class="MsoNormal" style="text-indent:24.0pt"><span lang="EN-US">keywords<o:p></o:p></span></p>
  </td>
  <td width="151" valign="top" style="width: 113.25pt; border-top-style: none; border-left-style: none; border-bottom-color: windowtext; border-bottom-width: 1pt; border-right-color: windowtext; border-right-width: 1pt; padding: 0cm 5.4pt;">
  <p class="MsoNormal" style="text-indent:24.0pt"><span lang="EN-US">text<o:p></o:p></span></p>
  </td>
  <td width="151" style="width: 113.25pt; border-top-style: none; border-left-style: none; border-bottom-color: windowtext; border-bottom-width: 1pt; border-right-color: windowtext; border-right-width: 1pt; padding: 0cm 5.4pt;">
  <p class="MsoNormal" align="center" style="text-align:center;text-indent:0cm;
  mso-char-indent-count:0"><span lang="EN-US"><o:p>&nbsp;</o:p></span></p>
  </td>
  <td width="151" style="width: 113.25pt; border-top-style: none; border-left-style: none; border-bottom-color: windowtext; border-bottom-width: 1pt; border-right-color: windowtext; border-right-width: 1pt; padding: 0cm 5.4pt;">
  <p class="MsoNormal" align="center" style="text-align:center;text-indent:0cm;
  mso-char-indent-count:0"><span style="font-family:宋体;mso-ascii-font-family:
  &quot;Times New Roman&quot;;mso-hansi-font-family:&quot;Times New Roman&quot;">关键词</span><span lang="EN-US"><o:p></o:p></span></p>
  </td>
 </tr>
 <tr>
  <td width="151" valign="top" style="width: 113.25pt; border-right-color: windowtext; border-bottom-color: windowtext; border-left-color: windowtext; border-right-width: 1pt; border-bottom-width: 1pt; border-left-width: 1pt; border-top-style: none; padding: 0cm 5.4pt;">
  <p class="MsoNormal" style="text-indent:24.0pt"><span lang="EN-US">url<o:p></o:p></span></p>
  </td>
  <td width="151" valign="top" style="width: 113.25pt; border-top-style: none; border-left-style: none; border-bottom-color: windowtext; border-bottom-width: 1pt; border-right-color: windowtext; border-right-width: 1pt; padding: 0cm 5.4pt;">
  <p class="MsoNormal" style="text-indent:24.0pt"><span lang="EN-US">varchar<o:p></o:p></span></p>
  </td>
  <td width="151" style="width: 113.25pt; border-top-style: none; border-left-style: none; border-bottom-color: windowtext; border-bottom-width: 1pt; border-right-color: windowtext; border-right-width: 1pt; padding: 0cm 5.4pt;">
  <p class="MsoNormal" align="center" style="text-align:center;text-indent:0cm;
  mso-char-indent-count:0"><span lang="EN-US"><o:p>&nbsp;</o:p></span></p>
  </td>
  <td width="151" style="width: 113.25pt; border-top-style: none; border-left-style: none; border-bottom-color: windowtext; border-bottom-width: 1pt; border-right-color: windowtext; border-right-width: 1pt; padding: 0cm 5.4pt;">
  <p class="MsoNormal" align="center" style="text-align:center;text-indent:0cm;
  mso-char-indent-count:0"><span style="font-family:宋体;mso-ascii-font-family:
  &quot;Times New Roman&quot;;mso-hansi-font-family:&quot;Times New Roman&quot;">链接地址</span><span lang="EN-US"><o:p></o:p></span></p>
  </td>
 </tr>
 <tr>
  <td width="151" valign="top" style="width: 113.25pt; border-right-color: windowtext; border-bottom-color: windowtext; border-left-color: windowtext; border-right-width: 1pt; border-bottom-width: 1pt; border-left-width: 1pt; border-top-style: none; padding: 0cm 5.4pt;">
  <p class="MsoNormal" style="text-indent:24.0pt"><span lang="EN-US">jointime<o:p></o:p></span></p>
  </td>
  <td width="151" valign="top" style="width: 113.25pt; border-top-style: none; border-left-style: none; border-bottom-color: windowtext; border-bottom-width: 1pt; border-right-color: windowtext; border-right-width: 1pt; padding: 0cm 5.4pt;">
  <p class="MsoNormal" style="text-indent:24.0pt"><span lang="EN-US">datetime<o:p></o:p></span></p>
  </td>
  <td width="151" style="width: 113.25pt; border-top-style: none; border-left-style: none; border-bottom-color: windowtext; border-bottom-width: 1pt; border-right-color: windowtext; border-right-width: 1pt; padding: 0cm 5.4pt;">
  <p class="MsoNormal" align="center" style="text-align:center;text-indent:0cm;
  mso-char-indent-count:0"><span lang="EN-US"><o:p>&nbsp;</o:p></span></p>
  </td>
  <td width="151" style="width: 113.25pt; border-top-style: none; border-left-style: none; border-bottom-color: windowtext; border-bottom-width: 1pt; border-right-color: windowtext; border-right-width: 1pt; padding: 0cm 5.4pt;">
  <p class="MsoNormal" align="center" style="text-align:center;text-indent:0cm;
  mso-char-indent-count:0"><span style="font-family:宋体;mso-ascii-font-family:
  &quot;Times New Roman&quot;;mso-hansi-font-family:&quot;Times New Roman&quot;">创建时间</span><span lang="EN-US"><o:p></o:p></span></p>
  </td>
 </tr>
</tbody></table>

<p class="MsoNormal" align="left" style="text-indent: 0cm;"><span lang="EN-US"><o:p>&nbsp;</o:p></span></p>

<table class="MsoTableGrid" border="1" cellspacing="0" cellpadding="0" style="border: none;">
 <tbody><tr>
  <td width="604" colspan="4" style="width: 453pt; border-color: windowtext; border-width: 1pt; padding: 0cm 5.4pt;">
  <p class="MsoNormal" align="center" style="text-align:center;text-indent:0cm;
  mso-char-indent-count:0"><span lang="EN-US">t_pt_owner<o:p></o:p></span></p>
  </td>
 </tr>
 <tr>
  <td width="151" style="width: 113.25pt; border-right-color: windowtext; border-bottom-color: windowtext; border-left-color: windowtext; border-right-width: 1pt; border-bottom-width: 1pt; border-left-width: 1pt; border-top-style: none; padding: 0cm 5.4pt;">
  <p class="MsoNormal" align="center" style="text-align:center;text-indent:0cm;
  mso-char-indent-count:0"><span style="font-family:宋体;mso-ascii-font-family:
  &quot;Times New Roman&quot;;mso-hansi-font-family:&quot;Times New Roman&quot;">字段名称</span><span lang="EN-US"><o:p></o:p></span></p>
  </td>
  <td width="151" style="width: 113.25pt; border-top-style: none; border-left-style: none; border-bottom-color: windowtext; border-bottom-width: 1pt; border-right-color: windowtext; border-right-width: 1pt; padding: 0cm 5.4pt;">
  <p class="MsoNormal" align="center" style="text-align:center;text-indent:0cm;
  mso-char-indent-count:0"><span style="font-family:宋体;mso-ascii-font-family:
  &quot;Times New Roman&quot;;mso-hansi-font-family:&quot;Times New Roman&quot;">数据类型</span><span lang="EN-US"><o:p></o:p></span></p>
  </td>
  <td width="151" style="width: 113.25pt; border-top-style: none; border-left-style: none; border-bottom-color: windowtext; border-bottom-width: 1pt; border-right-color: windowtext; border-right-width: 1pt; padding: 0cm 5.4pt;">
  <p class="MsoNormal" align="center" style="text-align:center;text-indent:0cm;
  mso-char-indent-count:0"><span style="font-family:宋体;mso-ascii-font-family:
  &quot;Times New Roman&quot;;mso-hansi-font-family:&quot;Times New Roman&quot;">主键</span><span lang="EN-US"><o:p></o:p></span></p>
  </td>
  <td width="151" style="width: 113.25pt; border-top-style: none; border-left-style: none; border-bottom-color: windowtext; border-bottom-width: 1pt; border-right-color: windowtext; border-right-width: 1pt; padding: 0cm 5.4pt;">
  <p class="MsoNormal" align="center" style="text-align:center;text-indent:0cm;
  mso-char-indent-count:0"><span style="font-family:宋体;mso-ascii-font-family:
  &quot;Times New Roman&quot;;mso-hansi-font-family:&quot;Times New Roman&quot;">注释</span><span lang="EN-US"><o:p></o:p></span></p>
  </td>
 </tr>
 <tr>
  <td width="151" valign="top" style="width: 113.25pt; border-right-color: windowtext; border-bottom-color: windowtext; border-left-color: windowtext; border-right-width: 1pt; border-bottom-width: 1pt; border-left-width: 1pt; border-top-style: none; padding: 0cm 5.4pt;">
  <p class="MsoNormal" style="text-indent:24.0pt"><span lang="EN-US">ID<o:p></o:p></span></p>
  </td>
  <td width="151" valign="top" style="width: 113.25pt; border-top-style: none; border-left-style: none; border-bottom-color: windowtext; border-bottom-width: 1pt; border-right-color: windowtext; border-right-width: 1pt; padding: 0cm 5.4pt;">
  <p class="MsoNormal" style="text-indent:24.0pt"><span lang="EN-US">int<o:p></o:p></span></p>
  </td>
  <td width="151" style="width: 113.25pt; border-top-style: none; border-left-style: none; border-bottom-color: windowtext; border-bottom-width: 1pt; border-right-color: windowtext; border-right-width: 1pt; padding: 0cm 5.4pt;">
  <p class="MsoNormal" align="center" style="text-align:center;text-indent:0cm;
  mso-char-indent-count:0"><span lang="EN-US">Key<o:p></o:p></span></p>
  </td>
  <td width="151" style="width: 113.25pt; border-top-style: none; border-left-style: none; border-bottom-color: windowtext; border-bottom-width: 1pt; border-right-color: windowtext; border-right-width: 1pt; padding: 0cm 5.4pt;">
  <p class="MsoNormal" align="center" style="text-align:center;text-indent:0cm;
  mso-char-indent-count:0"><span lang="EN-US">ID</span><span style="font-family:
  宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:&quot;Times New Roman&quot;">，自增</span><span lang="EN-US"><o:p></o:p></span></p>
  </td>
 </tr>
 <tr>
  <td width="151" valign="top" style="width: 113.25pt; border-right-color: windowtext; border-bottom-color: windowtext; border-left-color: windowtext; border-right-width: 1pt; border-bottom-width: 1pt; border-left-width: 1pt; border-top-style: none; padding: 0cm 5.4pt;">
  <p class="MsoNormal" style="text-indent:24.0pt"><span lang="EN-US">name<o:p></o:p></span></p>
  </td>
  <td width="151" valign="top" style="width: 113.25pt; border-top-style: none; border-left-style: none; border-bottom-color: windowtext; border-bottom-width: 1pt; border-right-color: windowtext; border-right-width: 1pt; padding: 0cm 5.4pt;">
  <p class="MsoNormal" style="text-indent:24.0pt"><span lang="EN-US">varchar<o:p></o:p></span></p>
  </td>
  <td width="151" style="width: 113.25pt; border-top-style: none; border-left-style: none; border-bottom-color: windowtext; border-bottom-width: 1pt; border-right-color: windowtext; border-right-width: 1pt; padding: 0cm 5.4pt;">
  <p class="MsoNormal" align="center" style="text-align:center;text-indent:0cm;
  mso-char-indent-count:0"><span lang="EN-US"><o:p>&nbsp;</o:p></span></p>
  </td>
  <td width="151" style="width: 113.25pt; border-top-style: none; border-left-style: none; border-bottom-color: windowtext; border-bottom-width: 1pt; border-right-color: windowtext; border-right-width: 1pt; padding: 0cm 5.4pt;">
  <p class="MsoNormal" align="center" style="text-align:center;text-indent:0cm;
  mso-char-indent-count:0"><span style="font-family:宋体;mso-ascii-font-family:
  &quot;Times New Roman&quot;;mso-hansi-font-family:&quot;Times New Roman&quot;">姓名</span><span lang="EN-US"><o:p></o:p></span></p>
  </td>
 </tr>
 <tr>
  <td width="151" valign="top" style="width: 113.25pt; border-right-color: windowtext; border-bottom-color: windowtext; border-left-color: windowtext; border-right-width: 1pt; border-bottom-width: 1pt; border-left-width: 1pt; border-top-style: none; padding: 0cm 5.4pt;">
  <p class="MsoNormal" style="text-indent:24.0pt"><span lang="EN-US">ename<o:p></o:p></span></p>
  </td>
  <td width="151" valign="top" style="width: 113.25pt; border-top-style: none; border-left-style: none; border-bottom-color: windowtext; border-bottom-width: 1pt; border-right-color: windowtext; border-right-width: 1pt; padding: 0cm 5.4pt;">
  <p class="MsoNormal" style="text-indent:24.0pt"><span lang="EN-US">varchar<o:p></o:p></span></p>
  </td>
  <td width="151" style="width: 113.25pt; border-top-style: none; border-left-style: none; border-bottom-color: windowtext; border-bottom-width: 1pt; border-right-color: windowtext; border-right-width: 1pt; padding: 0cm 5.4pt;">
  <p class="MsoNormal" align="center" style="text-align:center;text-indent:0cm;
  mso-char-indent-count:0"><span lang="EN-US"><o:p>&nbsp;</o:p></span></p>
  </td>
  <td width="151" style="width: 113.25pt; border-top-style: none; border-left-style: none; border-bottom-color: windowtext; border-bottom-width: 1pt; border-right-color: windowtext; border-right-width: 1pt; padding: 0cm 5.4pt;">
  <p class="MsoNormal" align="center" style="text-align:center;text-indent:0cm;
  mso-char-indent-count:0"><span style="font-family:宋体;mso-ascii-font-family:
  &quot;Times New Roman&quot;;mso-hansi-font-family:&quot;Times New Roman&quot;">英文名</span><span lang="EN-US"><o:p></o:p></span></p>
  </td>
 </tr>
 <tr>
  <td width="151" valign="top" style="width: 113.25pt; border-right-color: windowtext; border-bottom-color: windowtext; border-left-color: windowtext; border-right-width: 1pt; border-bottom-width: 1pt; border-left-width: 1pt; border-top-style: none; padding: 0cm 5.4pt;">
  <p class="MsoNormal" style="text-indent:24.0pt"><span lang="EN-US">hj<o:p></o:p></span></p>
  </td>
  <td width="151" valign="top" style="width: 113.25pt; border-top-style: none; border-left-style: none; border-bottom-color: windowtext; border-bottom-width: 1pt; border-right-color: windowtext; border-right-width: 1pt; padding: 0cm 5.4pt;">
  <p class="MsoNormal" style="text-indent:24.0pt"><span lang="EN-US">varchar<o:p></o:p></span></p>
  </td>
  <td width="151" style="width: 113.25pt; border-top-style: none; border-left-style: none; border-bottom-color: windowtext; border-bottom-width: 1pt; border-right-color: windowtext; border-right-width: 1pt; padding: 0cm 5.4pt;">
  <p class="MsoNormal" align="center" style="text-align:center;text-indent:0cm;
  mso-char-indent-count:0"><span lang="EN-US"><o:p>&nbsp;</o:p></span></p>
  </td>
  <td width="151" style="width: 113.25pt; border-top-style: none; border-left-style: none; border-bottom-color: windowtext; border-bottom-width: 1pt; border-right-color: windowtext; border-right-width: 1pt; padding: 0cm 5.4pt;">
  <p class="MsoNormal" align="center" style="text-align:center;text-indent:0cm;
  mso-char-indent-count:0"><span style="font-family:宋体;mso-ascii-font-family:
  &quot;Times New Roman&quot;;mso-hansi-font-family:&quot;Times New Roman&quot;">户籍</span><span lang="EN-US"><o:p></o:p></span></p>
  </td>
 </tr>
 <tr>
  <td width="151" valign="top" style="width: 113.25pt; border-right-color: windowtext; border-bottom-color: windowtext; border-left-color: windowtext; border-right-width: 1pt; border-bottom-width: 1pt; border-left-width: 1pt; border-top-style: none; padding: 0cm 5.4pt;">
  <p class="MsoNormal" style="text-indent:24.0pt"><span lang="EN-US">dz<o:p></o:p></span></p>
  </td>
  <td width="151" valign="top" style="width: 113.25pt; border-top-style: none; border-left-style: none; border-bottom-color: windowtext; border-bottom-width: 1pt; border-right-color: windowtext; border-right-width: 1pt; padding: 0cm 5.4pt;">
  <p class="MsoNormal" style="text-indent:24.0pt"><span lang="EN-US">varchar<o:p></o:p></span></p>
  </td>
  <td width="151" style="width: 113.25pt; border-top-style: none; border-left-style: none; border-bottom-color: windowtext; border-bottom-width: 1pt; border-right-color: windowtext; border-right-width: 1pt; padding: 0cm 5.4pt;">
  <p class="MsoNormal" align="center" style="text-align:center;text-indent:0cm;
  mso-char-indent-count:0"><span lang="EN-US"><o:p>&nbsp;</o:p></span></p>
  </td>
  <td width="151" style="width: 113.25pt; border-top-style: none; border-left-style: none; border-bottom-color: windowtext; border-bottom-width: 1pt; border-right-color: windowtext; border-right-width: 1pt; padding: 0cm 5.4pt;">
  <p class="MsoNormal" align="center" style="text-align:center;text-indent:0cm;
  mso-char-indent-count:0"><span style="font-family:宋体;mso-ascii-font-family:
  &quot;Times New Roman&quot;;mso-hansi-font-family:&quot;Times New Roman&quot;">地址</span><span lang="EN-US"><o:p></o:p></span></p>
  </td>
 </tr>
 <tr>
  <td width="151" valign="top" style="width: 113.25pt; border-right-color: windowtext; border-bottom-color: windowtext; border-left-color: windowtext; border-right-width: 1pt; border-bottom-width: 1pt; border-left-width: 1pt; border-top-style: none; padding: 0cm 5.4pt;">
  <p class="MsoNormal" style="text-indent:24.0pt"><span lang="EN-US">xx<o:p></o:p></span></p>
  </td>
  <td width="151" valign="top" style="width: 113.25pt; border-top-style: none; border-left-style: none; border-bottom-color: windowtext; border-bottom-width: 1pt; border-right-color: windowtext; border-right-width: 1pt; padding: 0cm 5.4pt;">
  <p class="MsoNormal" style="text-indent:24.0pt"><span lang="EN-US">varchar<o:p></o:p></span></p>
  </td>
  <td width="151" style="width: 113.25pt; border-top-style: none; border-left-style: none; border-bottom-color: windowtext; border-bottom-width: 1pt; border-right-color: windowtext; border-right-width: 1pt; padding: 0cm 5.4pt;">
  <p class="MsoNormal" align="center" style="text-align:center;text-indent:0cm;
  mso-char-indent-count:0"><span lang="EN-US"><o:p>&nbsp;</o:p></span></p>
  </td>
  <td width="151" style="width: 113.25pt; border-top-style: none; border-left-style: none; border-bottom-color: windowtext; border-bottom-width: 1pt; border-right-color: windowtext; border-right-width: 1pt; padding: 0cm 5.4pt;">
  <p class="MsoNormal" align="center" style="text-align:center;text-indent:0cm;
  mso-char-indent-count:0"><span style="font-family:宋体;mso-ascii-font-family:
  &quot;Times New Roman&quot;;mso-hansi-font-family:&quot;Times New Roman&quot;">学校</span><span lang="EN-US"><o:p></o:p></span></p>
  </td>
 </tr>
 <tr>
  <td width="151" valign="top" style="width: 113.25pt; border-right-color: windowtext; border-bottom-color: windowtext; border-left-color: windowtext; border-right-width: 1pt; border-bottom-width: 1pt; border-left-width: 1pt; border-top-style: none; padding: 0cm 5.4pt;">
  <p class="MsoNormal" style="text-indent:24.0pt"><span lang="EN-US">bj<o:p></o:p></span></p>
  </td>
  <td width="151" valign="top" style="width: 113.25pt; border-top-style: none; border-left-style: none; border-bottom-color: windowtext; border-bottom-width: 1pt; border-right-color: windowtext; border-right-width: 1pt; padding: 0cm 5.4pt;">
  <p class="MsoNormal" style="text-indent:24.0pt"><span lang="EN-US">varchar<o:p></o:p></span></p>
  </td>
  <td width="151" style="width: 113.25pt; border-top-style: none; border-left-style: none; border-bottom-color: windowtext; border-bottom-width: 1pt; border-right-color: windowtext; border-right-width: 1pt; padding: 0cm 5.4pt;">
  <p class="MsoNormal" align="center" style="text-align:center;text-indent:0cm;
  mso-char-indent-count:0"><span lang="EN-US"><o:p>&nbsp;</o:p></span></p>
  </td>
  <td width="151" style="width: 113.25pt; border-top-style: none; border-left-style: none; border-bottom-color: windowtext; border-bottom-width: 1pt; border-right-color: windowtext; border-right-width: 1pt; padding: 0cm 5.4pt;">
  <p class="MsoNormal" align="center" style="text-align:center;text-indent:0cm;
  mso-char-indent-count:0"><span style="font-family:宋体;mso-ascii-font-family:
  &quot;Times New Roman&quot;;mso-hansi-font-family:&quot;Times New Roman&quot;">班级</span><span lang="EN-US"><o:p></o:p></span></p>
  </td>
 </tr>
 <tr>
  <td width="151" valign="top" style="width: 113.25pt; border-right-color: windowtext; border-bottom-color: windowtext; border-left-color: windowtext; border-right-width: 1pt; border-bottom-width: 1pt; border-left-width: 1pt; border-top-style: none; padding: 0cm 5.4pt;">
  <p class="MsoNormal" style="text-indent:24.0pt"><span lang="EN-US">xh<o:p></o:p></span></p>
  </td>
  <td width="151" valign="top" style="width: 113.25pt; border-top-style: none; border-left-style: none; border-bottom-color: windowtext; border-bottom-width: 1pt; border-right-color: windowtext; border-right-width: 1pt; padding: 0cm 5.4pt;">
  <p class="MsoNormal" style="text-indent:24.0pt"><span lang="EN-US">varchar<o:p></o:p></span></p>
  </td>
  <td width="151" style="width: 113.25pt; border-top-style: none; border-left-style: none; border-bottom-color: windowtext; border-bottom-width: 1pt; border-right-color: windowtext; border-right-width: 1pt; padding: 0cm 5.4pt;">
  <p class="MsoNormal" align="center" style="text-align:center;text-indent:0cm;
  mso-char-indent-count:0"><span lang="EN-US"><o:p>&nbsp;</o:p></span></p>
  </td>
  <td width="151" style="width: 113.25pt; border-top-style: none; border-left-style: none; border-bottom-color: windowtext; border-bottom-width: 1pt; border-right-color: windowtext; border-right-width: 1pt; padding: 0cm 5.4pt;">
  <p class="MsoNormal" align="center" style="text-align:center;text-indent:0cm;
  mso-char-indent-count:0"><span style="font-family:宋体;mso-ascii-font-family:
  &quot;Times New Roman&quot;;mso-hansi-font-family:&quot;Times New Roman&quot;">学号</span><span lang="EN-US"><o:p></o:p></span></p>
  </td>
 </tr>
 <tr>
  <td width="151" valign="top" style="width: 113.25pt; border-right-color: windowtext; border-bottom-color: windowtext; border-left-color: windowtext; border-right-width: 1pt; border-bottom-width: 1pt; border-left-width: 1pt; border-top-style: none; padding: 0cm 5.4pt;">
  <p class="MsoNormal" style="text-indent:24.0pt"><span lang="EN-US">dh<o:p></o:p></span></p>
  </td>
  <td width="151" valign="top" style="width: 113.25pt; border-top-style: none; border-left-style: none; border-bottom-color: windowtext; border-bottom-width: 1pt; border-right-color: windowtext; border-right-width: 1pt; padding: 0cm 5.4pt;">
  <p class="MsoNormal" style="text-indent:24.0pt"><span lang="EN-US">varchar<o:p></o:p></span></p>
  </td>
  <td width="151" style="width: 113.25pt; border-top-style: none; border-left-style: none; border-bottom-color: windowtext; border-bottom-width: 1pt; border-right-color: windowtext; border-right-width: 1pt; padding: 0cm 5.4pt;">
  <p class="MsoNormal" align="center" style="text-align:center;text-indent:0cm;
  mso-char-indent-count:0"><span lang="EN-US"><o:p>&nbsp;</o:p></span></p>
  </td>
  <td width="151" style="width: 113.25pt; border-top-style: none; border-left-style: none; border-bottom-color: windowtext; border-bottom-width: 1pt; border-right-color: windowtext; border-right-width: 1pt; padding: 0cm 5.4pt;">
  <p class="MsoNormal" align="center" style="text-align:center;text-indent:0cm;
  mso-char-indent-count:0"><span style="font-family:宋体;mso-ascii-font-family:
  &quot;Times New Roman&quot;;mso-hansi-font-family:&quot;Times New Roman&quot;">电话</span><span lang="EN-US"><o:p></o:p></span></p>
  </td>
 </tr>
 <tr>
  <td width="151" valign="top" style="width: 113.25pt; border-right-color: windowtext; border-bottom-color: windowtext; border-left-color: windowtext; border-right-width: 1pt; border-bottom-width: 1pt; border-left-width: 1pt; border-top-style: none; padding: 0cm 5.4pt;">
  <p class="MsoNormal" style="text-indent:24.0pt"><span lang="EN-US">email<o:p></o:p></span></p>
  </td>
  <td width="151" valign="top" style="width: 113.25pt; border-top-style: none; border-left-style: none; border-bottom-color: windowtext; border-bottom-width: 1pt; border-right-color: windowtext; border-right-width: 1pt; padding: 0cm 5.4pt;">
  <p class="MsoNormal" style="text-indent:24.0pt"><span lang="EN-US">varchar<o:p></o:p></span></p>
  </td>
  <td width="151" style="width: 113.25pt; border-top-style: none; border-left-style: none; border-bottom-color: windowtext; border-bottom-width: 1pt; border-right-color: windowtext; border-right-width: 1pt; padding: 0cm 5.4pt;">
  <p class="MsoNormal" align="center" style="text-align:center;text-indent:0cm;
  mso-char-indent-count:0"><span lang="EN-US"><o:p>&nbsp;</o:p></span></p>
  </td>
  <td width="151" style="width: 113.25pt; border-top-style: none; border-left-style: none; border-bottom-color: windowtext; border-bottom-width: 1pt; border-right-color: windowtext; border-right-width: 1pt; padding: 0cm 5.4pt;">
  <p class="MsoNormal" align="center" style="text-align:center;text-indent:0cm;
  mso-char-indent-count:0"><span lang="EN-US">Email<o:p></o:p></span></p>
  </td>
 </tr>
 <tr>
  <td width="151" valign="top" style="width: 113.25pt; border-right-color: windowtext; border-bottom-color: windowtext; border-left-color: windowtext; border-right-width: 1pt; border-bottom-width: 1pt; border-left-width: 1pt; border-top-style: none; padding: 0cm 5.4pt;">
  <p class="MsoNormal" style="text-indent:24.0pt"><span lang="EN-US">tp<o:p></o:p></span></p>
  </td>
  <td width="151" valign="top" style="width: 113.25pt; border-top-style: none; border-left-style: none; border-bottom-color: windowtext; border-bottom-width: 1pt; border-right-color: windowtext; border-right-width: 1pt; padding: 0cm 5.4pt;">
  <p class="MsoNormal" style="text-indent:24.0pt"><span lang="EN-US">varchar<o:p></o:p></span></p>
  </td>
  <td width="151" style="width: 113.25pt; border-top-style: none; border-left-style: none; border-bottom-color: windowtext; border-bottom-width: 1pt; border-right-color: windowtext; border-right-width: 1pt; padding: 0cm 5.4pt;">
  <p class="MsoNormal" align="center" style="text-align:center;text-indent:0cm;
  mso-char-indent-count:0"><span lang="EN-US"><o:p>&nbsp;</o:p></span></p>
  </td>
  <td width="151" style="width: 113.25pt; border-top-style: none; border-left-style: none; border-bottom-color: windowtext; border-bottom-width: 1pt; border-right-color: windowtext; border-right-width: 1pt; padding: 0cm 5.4pt;">
  <p class="MsoNormal" align="center" style="text-align:center;text-indent:0cm;
  mso-char-indent-count:0"><span style="font-family:宋体;mso-ascii-font-family:
  &quot;Times New Roman&quot;;mso-hansi-font-family:&quot;Times New Roman&quot;">图片</span><span lang="EN-US"><o:p></o:p></span></p>
  </td>
 </tr>
</tbody></table>

<p class="MsoNormal" align="left" style="text-indent: 0cm;"><span lang="EN-US"><o:p>&nbsp;</o:p></span></p>

<table class="MsoTableGrid" border="1" cellspacing="0" cellpadding="0" style="border: none;">
 <tbody><tr>
  <td width="604" colspan="4" style="width: 453pt; border-color: windowtext; border-width: 1pt; padding: 0cm 5.4pt;">
  <p class="MsoNormal" align="center" style="text-align:center;text-indent:0cm;
  mso-char-indent-count:0"><span lang="EN-US">t_pt_urllist<o:p></o:p></span></p>
  </td>
 </tr>
 <tr>
  <td width="151" style="width: 113.25pt; border-right-color: windowtext; border-bottom-color: windowtext; border-left-color: windowtext; border-right-width: 1pt; border-bottom-width: 1pt; border-left-width: 1pt; border-top-style: none; padding: 0cm 5.4pt;">
  <p class="MsoNormal" align="center" style="text-align:center;text-indent:0cm;
  mso-char-indent-count:0"><span style="font-family:宋体;mso-ascii-font-family:
  &quot;Times New Roman&quot;;mso-hansi-font-family:&quot;Times New Roman&quot;">字段名称</span><span lang="EN-US"><o:p></o:p></span></p>
  </td>
  <td width="151" style="width: 113.25pt; border-top-style: none; border-left-style: none; border-bottom-color: windowtext; border-bottom-width: 1pt; border-right-color: windowtext; border-right-width: 1pt; padding: 0cm 5.4pt;">
  <p class="MsoNormal" align="center" style="text-align:center;text-indent:0cm;
  mso-char-indent-count:0"><span style="font-family:宋体;mso-ascii-font-family:
  &quot;Times New Roman&quot;;mso-hansi-font-family:&quot;Times New Roman&quot;">数据类型</span><span lang="EN-US"><o:p></o:p></span></p>
  </td>
  <td width="151" style="width: 113.25pt; border-top-style: none; border-left-style: none; border-bottom-color: windowtext; border-bottom-width: 1pt; border-right-color: windowtext; border-right-width: 1pt; padding: 0cm 5.4pt;">
  <p class="MsoNormal" align="center" style="text-align:center;text-indent:0cm;
  mso-char-indent-count:0"><span style="font-family:宋体;mso-ascii-font-family:
  &quot;Times New Roman&quot;;mso-hansi-font-family:&quot;Times New Roman&quot;">主键</span><span lang="EN-US"><o:p></o:p></span></p>
  </td>
  <td width="151" style="width: 113.25pt; border-top-style: none; border-left-style: none; border-bottom-color: windowtext; border-bottom-width: 1pt; border-right-color: windowtext; border-right-width: 1pt; padding: 0cm 5.4pt;">
  <p class="MsoNormal" align="center" style="text-align:center;text-indent:0cm;
  mso-char-indent-count:0"><span style="font-family:宋体;mso-ascii-font-family:
  &quot;Times New Roman&quot;;mso-hansi-font-family:&quot;Times New Roman&quot;">注释</span><span lang="EN-US"><o:p></o:p></span></p>
  </td>
 </tr>
 <tr>
  <td width="151" valign="top" style="width: 113.25pt; border-right-color: windowtext; border-bottom-color: windowtext; border-left-color: windowtext; border-right-width: 1pt; border-bottom-width: 1pt; border-left-width: 1pt; border-top-style: none; padding: 0cm 5.4pt;">
  <p class="MsoNormal" style="text-indent:24.0pt"><span lang="EN-US">ID<o:p></o:p></span></p>
  </td>
  <td width="151" valign="top" style="width: 113.25pt; border-top-style: none; border-left-style: none; border-bottom-color: windowtext; border-bottom-width: 1pt; border-right-color: windowtext; border-right-width: 1pt; padding: 0cm 5.4pt;">
  <p class="MsoNormal" style="text-indent:24.0pt"><span lang="EN-US">int<o:p></o:p></span></p>
  </td>
  <td width="151" valign="top" style="width: 113.25pt; border-top-style: none; border-left-style: none; border-bottom-color: windowtext; border-bottom-width: 1pt; border-right-color: windowtext; border-right-width: 1pt; padding: 0cm 5.4pt;">
  <p class="MsoNormal" align="left" style="text-indent: 0cm;"><span lang="EN-US">Key<o:p></o:p></span></p>
  </td>
  <td width="151" valign="top" style="width: 113.25pt; border-top-style: none; border-left-style: none; border-bottom-color: windowtext; border-bottom-width: 1pt; border-right-color: windowtext; border-right-width: 1pt; padding: 0cm 5.4pt;">
  <p class="MsoNormal" align="left" style="text-indent: 0cm;"><span lang="EN-US">ID</span><span style="font-family:
  宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:&quot;Times New Roman&quot;">，自增</span><span lang="EN-US"><o:p></o:p></span></p>
  </td>
 </tr>
 <tr>
  <td width="151" valign="top" style="width: 113.25pt; border-right-color: windowtext; border-bottom-color: windowtext; border-left-color: windowtext; border-right-width: 1pt; border-bottom-width: 1pt; border-left-width: 1pt; border-top-style: none; padding: 0cm 5.4pt;">
  <p class="MsoNormal" style="text-indent:24.0pt"><span lang="EN-US">hostid<o:p></o:p></span></p>
  </td>
  <td width="151" valign="top" style="width: 113.25pt; border-top-style: none; border-left-style: none; border-bottom-color: windowtext; border-bottom-width: 1pt; border-right-color: windowtext; border-right-width: 1pt; padding: 0cm 5.4pt;">
  <p class="MsoNormal" style="text-indent:24.0pt"><span lang="EN-US">int<o:p></o:p></span></p>
  </td>
  <td width="151" valign="top" style="width: 113.25pt; border-top-style: none; border-left-style: none; border-bottom-color: windowtext; border-bottom-width: 1pt; border-right-color: windowtext; border-right-width: 1pt; padding: 0cm 5.4pt;">
  <p class="MsoNormal" align="left" style="text-indent: 0cm;"><span lang="EN-US"><o:p>&nbsp;</o:p></span></p>
  </td>
  <td width="151" valign="top" style="width: 113.25pt; border-top-style: none; border-left-style: none; border-bottom-color: windowtext; border-bottom-width: 1pt; border-right-color: windowtext; border-right-width: 1pt; padding: 0cm 5.4pt;">
  <p class="MsoNormal" align="left" style="text-indent: 0cm;"><span style="font-family:宋体;mso-ascii-font-family:
  &quot;Times New Roman&quot;;mso-hansi-font-family:&quot;Times New Roman&quot;">域名</span><span lang="EN-US">ID<o:p></o:p></span></p>
  </td>
 </tr>
 <tr>
  <td width="151" valign="top" style="width: 113.25pt; border-right-color: windowtext; border-bottom-color: windowtext; border-left-color: windowtext; border-right-width: 1pt; border-bottom-width: 1pt; border-left-width: 1pt; border-top-style: none; padding: 0cm 5.4pt;">
  <p class="MsoNormal" style="text-indent:24.0pt"><span lang="EN-US">url<o:p></o:p></span></p>
  </td>
  <td width="151" valign="top" style="width: 113.25pt; border-top-style: none; border-left-style: none; border-bottom-color: windowtext; border-bottom-width: 1pt; border-right-color: windowtext; border-right-width: 1pt; padding: 0cm 5.4pt;">
  <p class="MsoNormal" style="text-indent:24.0pt"><span lang="EN-US">varchar<o:p></o:p></span></p>
  </td>
  <td width="151" valign="top" style="width: 113.25pt; border-top-style: none; border-left-style: none; border-bottom-color: windowtext; border-bottom-width: 1pt; border-right-color: windowtext; border-right-width: 1pt; padding: 0cm 5.4pt;">
  <p class="MsoNormal" align="left" style="text-indent: 0cm;"><span lang="EN-US"><o:p>&nbsp;</o:p></span></p>
  </td>
  <td width="151" valign="top" style="width: 113.25pt; border-top-style: none; border-left-style: none; border-bottom-color: windowtext; border-bottom-width: 1pt; border-right-color: windowtext; border-right-width: 1pt; padding: 0cm 5.4pt;">
  <p class="MsoNormal" align="left" style="text-indent: 0cm;"><span style="font-family:宋体;mso-ascii-font-family:
  &quot;Times New Roman&quot;;mso-hansi-font-family:&quot;Times New Roman&quot;">任务链接</span><span lang="EN-US"><o:p></o:p></span></p>
  </td>
 </tr>
 <tr>
  <td width="151" valign="top" style="width: 113.25pt; border-right-color: windowtext; border-bottom-color: windowtext; border-left-color: windowtext; border-right-width: 1pt; border-bottom-width: 1pt; border-left-width: 1pt; border-top-style: none; padding: 0cm 5.4pt;">
  <p class="MsoNormal" style="text-indent:24.0pt"><span lang="EN-US">jointime<o:p></o:p></span></p>
  </td>
  <td width="151" valign="top" style="width: 113.25pt; border-top-style: none; border-left-style: none; border-bottom-color: windowtext; border-bottom-width: 1pt; border-right-color: windowtext; border-right-width: 1pt; padding: 0cm 5.4pt;">
  <p class="MsoNormal" style="text-indent:24.0pt"><span lang="EN-US">datetime<o:p></o:p></span></p>
  </td>
  <td width="151" valign="top" style="width: 113.25pt; border-top-style: none; border-left-style: none; border-bottom-color: windowtext; border-bottom-width: 1pt; border-right-color: windowtext; border-right-width: 1pt; padding: 0cm 5.4pt;">
  <p class="MsoNormal" align="left" style="text-indent: 0cm;"><span lang="EN-US"><o:p>&nbsp;</o:p></span></p>
  </td>
  <td width="151" valign="top" style="width: 113.25pt; border-top-style: none; border-left-style: none; border-bottom-color: windowtext; border-bottom-width: 1pt; border-right-color: windowtext; border-right-width: 1pt; padding: 0cm 5.4pt;">
  <p class="MsoNormal" align="left" style="text-indent: 0cm;"><span style="font-family:宋体;mso-ascii-font-family:
  &quot;Times New Roman&quot;;mso-hansi-font-family:&quot;Times New Roman&quot;">创建时间</span><span lang="EN-US"><o:p></o:p></span></p>
  </td>
 </tr>
 <tr>
  <td width="151" valign="top" style="width: 113.25pt; border-right-color: windowtext; border-bottom-color: windowtext; border-left-color: windowtext; border-right-width: 1pt; border-bottom-width: 1pt; border-left-width: 1pt; border-top-style: none; padding: 0cm 5.4pt;">
  <p class="MsoNormal" style="text-indent:24.0pt"><span lang="EN-US">yxbj<o:p></o:p></span></p>
  </td>
  <td width="151" valign="top" style="width: 113.25pt; border-top-style: none; border-left-style: none; border-bottom-color: windowtext; border-bottom-width: 1pt; border-right-color: windowtext; border-right-width: 1pt; padding: 0cm 5.4pt;">
  <p class="MsoNormal" style="text-indent:24.0pt"><span lang="EN-US">int<o:p></o:p></span></p>
  </td>
  <td width="151" valign="top" style="width: 113.25pt; border-top-style: none; border-left-style: none; border-bottom-color: windowtext; border-bottom-width: 1pt; border-right-color: windowtext; border-right-width: 1pt; padding: 0cm 5.4pt;">
  <p class="MsoNormal" align="left" style="text-indent: 0cm;"><span lang="EN-US"><o:p>&nbsp;</o:p></span></p>
  </td>
  <td width="151" valign="top" style="width: 113.25pt; border-top-style: none; border-left-style: none; border-bottom-color: windowtext; border-bottom-width: 1pt; border-right-color: windowtext; border-right-width: 1pt; padding: 0cm 5.4pt;">
  <p class="MsoNormal" align="left" style="text-indent: 0cm;"><span lang="EN-US">0-</span><span style="font-family:
  宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:&quot;Times New Roman&quot;">未采集；</span><span lang="EN-US">1-</span><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;
  mso-hansi-font-family:&quot;Times New Roman&quot;">采集成功；</span><span lang="EN-US">2-</span><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:
  &quot;Times New Roman&quot;">采集失败</span><span lang="EN-US"><o:p></o:p></span></p>
  </td>
 </tr>
</tbody></table>

<p class="MsoNormal" align="left" style="text-indent: 0cm;"><span lang="EN-US"><o:p>&nbsp;</o:p></span></p>

<table class="MsoTableGrid" border="1" cellspacing="0" cellpadding="0" style="border: none;">
 <tbody><tr>
  <td width="604" colspan="4" style="width: 453pt; border-color: windowtext; border-width: 1pt; padding: 0cm 5.4pt;">
  <p class="MsoNormal" align="center" style="text-align:center;text-indent:0cm;
  mso-char-indent-count:0"><span lang="EN-US">t_xt_gns<o:p></o:p></span></p>
  </td>
 </tr>
 <tr>
  <td width="151" style="width: 113.25pt; border-right-color: windowtext; border-bottom-color: windowtext; border-left-color: windowtext; border-right-width: 1pt; border-bottom-width: 1pt; border-left-width: 1pt; border-top-style: none; padding: 0cm 5.4pt;">
  <p class="MsoNormal" align="center" style="text-align:center;text-indent:0cm;
  mso-char-indent-count:0"><span style="font-family:宋体;mso-ascii-font-family:
  &quot;Times New Roman&quot;;mso-hansi-font-family:&quot;Times New Roman&quot;">字段名称</span><span lang="EN-US"><o:p></o:p></span></p>
  </td>
  <td width="151" style="width: 113.25pt; border-top-style: none; border-left-style: none; border-bottom-color: windowtext; border-bottom-width: 1pt; border-right-color: windowtext; border-right-width: 1pt; padding: 0cm 5.4pt;">
  <p class="MsoNormal" align="center" style="text-align:center;text-indent:0cm;
  mso-char-indent-count:0"><span style="font-family:宋体;mso-ascii-font-family:
  &quot;Times New Roman&quot;;mso-hansi-font-family:&quot;Times New Roman&quot;">数据类型</span><span lang="EN-US"><o:p></o:p></span></p>
  </td>
  <td width="151" style="width: 113.25pt; border-top-style: none; border-left-style: none; border-bottom-color: windowtext; border-bottom-width: 1pt; border-right-color: windowtext; border-right-width: 1pt; padding: 0cm 5.4pt;">
  <p class="MsoNormal" align="center" style="text-align:center;text-indent:0cm;
  mso-char-indent-count:0"><span style="font-family:宋体;mso-ascii-font-family:
  &quot;Times New Roman&quot;;mso-hansi-font-family:&quot;Times New Roman&quot;">主键</span><span lang="EN-US"><o:p></o:p></span></p>
  </td>
  <td width="151" style="width: 113.25pt; border-top-style: none; border-left-style: none; border-bottom-color: windowtext; border-bottom-width: 1pt; border-right-color: windowtext; border-right-width: 1pt; padding: 0cm 5.4pt;">
  <p class="MsoNormal" align="center" style="text-align:center;text-indent:0cm;
  mso-char-indent-count:0"><span style="font-family:宋体;mso-ascii-font-family:
  &quot;Times New Roman&quot;;mso-hansi-font-family:&quot;Times New Roman&quot;">注释</span><span lang="EN-US"><o:p></o:p></span></p>
  </td>
 </tr>
 <tr>
  <td width="151" valign="top" style="width: 113.25pt; border-right-color: windowtext; border-bottom-color: windowtext; border-left-color: windowtext; border-right-width: 1pt; border-bottom-width: 1pt; border-left-width: 1pt; border-top-style: none; padding: 0cm 5.4pt;">
  <p class="MsoNormal" style="text-indent:24.0pt"><span lang="EN-US">id<o:p></o:p></span></p>
  </td>
  <td width="151" valign="top" style="width: 113.25pt; border-top-style: none; border-left-style: none; border-bottom-color: windowtext; border-bottom-width: 1pt; border-right-color: windowtext; border-right-width: 1pt; padding: 0cm 5.4pt;">
  <p class="MsoNormal" style="text-indent:24.0pt"><span lang="EN-US">int<o:p></o:p></span></p>
  </td>
  <td width="151" valign="top" style="width: 113.25pt; border-top-style: none; border-left-style: none; border-bottom-color: windowtext; border-bottom-width: 1pt; border-right-color: windowtext; border-right-width: 1pt; padding: 0cm 5.4pt;">
  <p class="MsoNormal" align="left" style="text-indent: 0cm;"><span lang="EN-US">Key<o:p></o:p></span></p>
  </td>
  <td width="151" valign="top" style="width: 113.25pt; border-top-style: none; border-left-style: none; border-bottom-color: windowtext; border-bottom-width: 1pt; border-right-color: windowtext; border-right-width: 1pt; padding: 0cm 5.4pt;">
  <p class="MsoNormal" align="left" style="text-indent: 0cm;"><span lang="EN-US">ID</span><span style="font-family:
  宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:&quot;Times New Roman&quot;">，自增</span><span lang="EN-US"><o:p></o:p></span></p>
  </td>
 </tr>
 <tr>
  <td width="151" valign="top" style="width: 113.25pt; border-right-color: windowtext; border-bottom-color: windowtext; border-left-color: windowtext; border-right-width: 1pt; border-bottom-width: 1pt; border-left-width: 1pt; border-top-style: none; padding: 0cm 5.4pt;">
  <p class="MsoNormal" style="text-indent:24.0pt"><span lang="EN-US">gnmc<o:p></o:p></span></p>
  </td>
  <td width="151" valign="top" style="width: 113.25pt; border-top-style: none; border-left-style: none; border-bottom-color: windowtext; border-bottom-width: 1pt; border-right-color: windowtext; border-right-width: 1pt; padding: 0cm 5.4pt;">
  <p class="MsoNormal" style="text-indent:24.0pt"><span lang="EN-US">varchar<o:p></o:p></span></p>
  </td>
  <td width="151" valign="top" style="width: 113.25pt; border-top-style: none; border-left-style: none; border-bottom-color: windowtext; border-bottom-width: 1pt; border-right-color: windowtext; border-right-width: 1pt; padding: 0cm 5.4pt;">
  <p class="MsoNormal" align="left" style="text-indent: 0cm;"><span lang="EN-US"><o:p>&nbsp;</o:p></span></p>
  </td>
  <td width="151" valign="top" style="width: 113.25pt; border-top-style: none; border-left-style: none; border-bottom-color: windowtext; border-bottom-width: 1pt; border-right-color: windowtext; border-right-width: 1pt; padding: 0cm 5.4pt;">
  <p class="MsoNormal" align="left" style="text-indent: 0cm;"><span style="font-family:宋体;mso-ascii-font-family:
  &quot;Times New Roman&quot;;mso-hansi-font-family:&quot;Times New Roman&quot;">功能名称</span><span lang="EN-US"><o:p></o:p></span></p>
  </td>
 </tr>
 <tr>
  <td width="151" valign="top" style="width: 113.25pt; border-right-color: windowtext; border-bottom-color: windowtext; border-left-color: windowtext; border-right-width: 1pt; border-bottom-width: 1pt; border-left-width: 1pt; border-top-style: none; padding: 0cm 5.4pt;">
  <p class="MsoNormal" style="text-indent:24.0pt"><span lang="EN-US">gnms<o:p></o:p></span></p>
  </td>
  <td width="151" valign="top" style="width: 113.25pt; border-top-style: none; border-left-style: none; border-bottom-color: windowtext; border-bottom-width: 1pt; border-right-color: windowtext; border-right-width: 1pt; padding: 0cm 5.4pt;">
  <p class="MsoNormal" style="text-indent:24.0pt"><span lang="EN-US">varchar<o:p></o:p></span></p>
  </td>
  <td width="151" valign="top" style="width: 113.25pt; border-top-style: none; border-left-style: none; border-bottom-color: windowtext; border-bottom-width: 1pt; border-right-color: windowtext; border-right-width: 1pt; padding: 0cm 5.4pt;">
  <p class="MsoNormal" align="left" style="text-indent: 0cm;"><span lang="EN-US"><o:p>&nbsp;</o:p></span></p>
  </td>
  <td width="151" valign="top" style="width: 113.25pt; border-top-style: none; border-left-style: none; border-bottom-color: windowtext; border-bottom-width: 1pt; border-right-color: windowtext; border-right-width: 1pt; padding: 0cm 5.4pt;">
  <p class="MsoNormal" align="left" style="text-indent: 0cm;"><span style="font-family:宋体;mso-ascii-font-family:
  &quot;Times New Roman&quot;;mso-hansi-font-family:&quot;Times New Roman&quot;">功能描述</span><span lang="EN-US"><o:p></o:p></span></p>
  </td>
 </tr>
 <tr>
  <td width="151" valign="top" style="width: 113.25pt; border-right-color: windowtext; border-bottom-color: windowtext; border-left-color: windowtext; border-right-width: 1pt; border-bottom-width: 1pt; border-left-width: 1pt; border-top-style: none; padding: 0cm 5.4pt;">
  <p class="MsoNormal" style="text-indent:24.0pt"><span lang="EN-US">pid<o:p></o:p></span></p>
  </td>
  <td width="151" valign="top" style="width: 113.25pt; border-top-style: none; border-left-style: none; border-bottom-color: windowtext; border-bottom-width: 1pt; border-right-color: windowtext; border-right-width: 1pt; padding: 0cm 5.4pt;">
  <p class="MsoNormal" style="text-indent:24.0pt"><span lang="EN-US">int<o:p></o:p></span></p>
  </td>
  <td width="151" valign="top" style="width: 113.25pt; border-top-style: none; border-left-style: none; border-bottom-color: windowtext; border-bottom-width: 1pt; border-right-color: windowtext; border-right-width: 1pt; padding: 0cm 5.4pt;">
  <p class="MsoNormal" align="left" style="text-indent: 0cm;"><span lang="EN-US"><o:p>&nbsp;</o:p></span></p>
  </td>
  <td width="151" valign="top" style="width: 113.25pt; border-top-style: none; border-left-style: none; border-bottom-color: windowtext; border-bottom-width: 1pt; border-right-color: windowtext; border-right-width: 1pt; padding: 0cm 5.4pt;">
  <p class="MsoNormal" align="left" style="text-indent: 0cm;"><span style="font-family:宋体;mso-ascii-font-family:
  &quot;Times New Roman&quot;;mso-hansi-font-family:&quot;Times New Roman&quot;">组</span><span lang="EN-US">ID<o:p></o:p></span></p>
  </td>
 </tr>
 <tr>
  <td width="151" valign="top" style="width: 113.25pt; border-right-color: windowtext; border-bottom-color: windowtext; border-left-color: windowtext; border-right-width: 1pt; border-bottom-width: 1pt; border-left-width: 1pt; border-top-style: none; padding: 0cm 5.4pt;">
  <p class="MsoNormal" style="text-indent:24.0pt"><span lang="EN-US">cjsj<o:p></o:p></span></p>
  </td>
  <td width="151" valign="top" style="width: 113.25pt; border-top-style: none; border-left-style: none; border-bottom-color: windowtext; border-bottom-width: 1pt; border-right-color: windowtext; border-right-width: 1pt; padding: 0cm 5.4pt;">
  <p class="MsoNormal" style="text-indent:24.0pt"><span lang="EN-US">varchar<o:p></o:p></span></p>
  </td>
  <td width="151" valign="top" style="width: 113.25pt; border-top-style: none; border-left-style: none; border-bottom-color: windowtext; border-bottom-width: 1pt; border-right-color: windowtext; border-right-width: 1pt; padding: 0cm 5.4pt;">
  <p class="MsoNormal" align="left" style="text-indent: 0cm;"><span lang="EN-US"><o:p>&nbsp;</o:p></span></p>
  </td>
  <td width="151" valign="top" style="width: 113.25pt; border-top-style: none; border-left-style: none; border-bottom-color: windowtext; border-bottom-width: 1pt; border-right-color: windowtext; border-right-width: 1pt; padding: 0cm 5.4pt;">
  <p class="MsoNormal" align="left" style="text-indent: 0cm;"><span style="font-family:宋体;mso-ascii-font-family:
  &quot;Times New Roman&quot;;mso-hansi-font-family:&quot;Times New Roman&quot;">创建节点</span><span lang="EN-US"><o:p></o:p></span></p>
  </td>
 </tr>
 <tr>
  <td width="151" valign="top" style="width: 113.25pt; border-right-color: windowtext; border-bottom-color: windowtext; border-left-color: windowtext; border-right-width: 1pt; border-bottom-width: 1pt; border-left-width: 1pt; border-top-style: none; padding: 0cm 5.4pt;">
  <p class="MsoNormal" style="text-indent:24.0pt"><span lang="EN-US">path<o:p></o:p></span></p>
  </td>
  <td width="151" valign="top" style="width: 113.25pt; border-top-style: none; border-left-style: none; border-bottom-color: windowtext; border-bottom-width: 1pt; border-right-color: windowtext; border-right-width: 1pt; padding: 0cm 5.4pt;">
  <p class="MsoNormal" style="text-indent:24.0pt"><span lang="EN-US">varchar<o:p></o:p></span></p>
  </td>
  <td width="151" valign="top" style="width: 113.25pt; border-top-style: none; border-left-style: none; border-bottom-color: windowtext; border-bottom-width: 1pt; border-right-color: windowtext; border-right-width: 1pt; padding: 0cm 5.4pt;">
  <p class="MsoNormal" align="left" style="text-indent: 0cm;"><span lang="EN-US"><o:p>&nbsp;</o:p></span></p>
  </td>
  <td width="151" valign="top" style="width: 113.25pt; border-top-style: none; border-left-style: none; border-bottom-color: windowtext; border-bottom-width: 1pt; border-right-color: windowtext; border-right-width: 1pt; padding: 0cm 5.4pt;">
  <p class="MsoNormal" align="left" style="text-indent: 0cm;"><span lang="EN-US">Path<o:p></o:p></span></p>
  </td>
 </tr>
 <tr>
  <td width="151" valign="top" style="width: 113.25pt; border-right-color: windowtext; border-bottom-color: windowtext; border-left-color: windowtext; border-right-width: 1pt; border-bottom-width: 1pt; border-left-width: 1pt; border-top-style: none; padding: 0cm 5.4pt;">
  <p class="MsoNormal" style="text-indent:24.0pt"><span lang="EN-US">sfyx<o:p></o:p></span></p>
  </td>
  <td width="151" valign="top" style="width: 113.25pt; border-top-style: none; border-left-style: none; border-bottom-color: windowtext; border-bottom-width: 1pt; border-right-color: windowtext; border-right-width: 1pt; padding: 0cm 5.4pt;">
  <p class="MsoNormal" style="text-indent:24.0pt"><span lang="EN-US">char<o:p></o:p></span></p>
  </td>
  <td width="151" valign="top" style="width: 113.25pt; border-top-style: none; border-left-style: none; border-bottom-color: windowtext; border-bottom-width: 1pt; border-right-color: windowtext; border-right-width: 1pt; padding: 0cm 5.4pt;">
  <p class="MsoNormal" align="left" style="text-indent: 0cm;"><span lang="EN-US"><o:p>&nbsp;</o:p></span></p>
  </td>
  <td width="151" valign="top" style="width: 113.25pt; border-top-style: none; border-left-style: none; border-bottom-color: windowtext; border-bottom-width: 1pt; border-right-color: windowtext; border-right-width: 1pt; padding: 0cm 5.4pt;">
  <p class="MsoNormal" align="left" style="text-indent: 0cm;"><span style="font-family:宋体;mso-ascii-font-family:
  &quot;Times New Roman&quot;;mso-hansi-font-family:&quot;Times New Roman&quot;">有效标记默认</span><span lang="EN-US">1<o:p></o:p></span></p>
  </td>
 </tr>
</tbody></table>

<p class="MsoNormal" align="left" style="text-indent: 0cm;"><span lang="EN-US"><o:p>&nbsp;</o:p></span></p>

<table class="MsoTableGrid" border="1" cellspacing="0" cellpadding="0" style="border: none;">
 <tbody><tr>
  <td width="604" colspan="4" style="width: 453pt; border-color: windowtext; border-width: 1pt; padding: 0cm 5.4pt;">
  <p class="MsoNormal" align="center" style="text-align:center;text-indent:0cm;
  mso-char-indent-count:0"><span lang="EN-US">t_xt_js<o:p></o:p></span></p>
  </td>
 </tr>
 <tr>
  <td width="151" style="width: 113.25pt; border-right-color: windowtext; border-bottom-color: windowtext; border-left-color: windowtext; border-right-width: 1pt; border-bottom-width: 1pt; border-left-width: 1pt; border-top-style: none; padding: 0cm 5.4pt;">
  <p class="MsoNormal" align="center" style="text-align:center;text-indent:0cm;
  mso-char-indent-count:0"><span style="font-family:宋体;mso-ascii-font-family:
  &quot;Times New Roman&quot;;mso-hansi-font-family:&quot;Times New Roman&quot;">字段名称</span><span lang="EN-US"><o:p></o:p></span></p>
  </td>
  <td width="151" style="width: 113.25pt; border-top-style: none; border-left-style: none; border-bottom-color: windowtext; border-bottom-width: 1pt; border-right-color: windowtext; border-right-width: 1pt; padding: 0cm 5.4pt;">
  <p class="MsoNormal" align="center" style="text-align:center;text-indent:0cm;
  mso-char-indent-count:0"><span style="font-family:宋体;mso-ascii-font-family:
  &quot;Times New Roman&quot;;mso-hansi-font-family:&quot;Times New Roman&quot;">数据类型</span><span lang="EN-US"><o:p></o:p></span></p>
  </td>
  <td width="151" style="width: 113.25pt; border-top-style: none; border-left-style: none; border-bottom-color: windowtext; border-bottom-width: 1pt; border-right-color: windowtext; border-right-width: 1pt; padding: 0cm 5.4pt;">
  <p class="MsoNormal" align="center" style="text-align:center;text-indent:0cm;
  mso-char-indent-count:0"><span style="font-family:宋体;mso-ascii-font-family:
  &quot;Times New Roman&quot;;mso-hansi-font-family:&quot;Times New Roman&quot;">主键</span><span lang="EN-US"><o:p></o:p></span></p>
  </td>
  <td width="151" style="width: 113.25pt; border-top-style: none; border-left-style: none; border-bottom-color: windowtext; border-bottom-width: 1pt; border-right-color: windowtext; border-right-width: 1pt; padding: 0cm 5.4pt;">
  <p class="MsoNormal" align="center" style="text-align:center;text-indent:0cm;
  mso-char-indent-count:0"><span style="font-family:宋体;mso-ascii-font-family:
  &quot;Times New Roman&quot;;mso-hansi-font-family:&quot;Times New Roman&quot;">注释</span><span lang="EN-US"><o:p></o:p></span></p>
  </td>
 </tr>
 <tr>
  <td width="151" valign="top" style="width: 113.25pt; border-right-color: windowtext; border-bottom-color: windowtext; border-left-color: windowtext; border-right-width: 1pt; border-bottom-width: 1pt; border-left-width: 1pt; border-top-style: none; padding: 0cm 5.4pt;">
  <p class="MsoNormal" style="text-indent:24.0pt"><span lang="EN-US">id<o:p></o:p></span></p>
  </td>
  <td width="151" valign="top" style="width: 113.25pt; border-top-style: none; border-left-style: none; border-bottom-color: windowtext; border-bottom-width: 1pt; border-right-color: windowtext; border-right-width: 1pt; padding: 0cm 5.4pt;">
  <p class="MsoNormal" style="text-indent:24.0pt"><span lang="EN-US">int<o:p></o:p></span></p>
  </td>
  <td width="151" valign="top" style="width: 113.25pt; border-top-style: none; border-left-style: none; border-bottom-color: windowtext; border-bottom-width: 1pt; border-right-color: windowtext; border-right-width: 1pt; padding: 0cm 5.4pt;">
  <p class="MsoNormal" align="left" style="text-indent: 0cm;"><span lang="EN-US">Key<o:p></o:p></span></p>
  </td>
  <td width="151" valign="top" style="width: 113.25pt; border-top-style: none; border-left-style: none; border-bottom-color: windowtext; border-bottom-width: 1pt; border-right-color: windowtext; border-right-width: 1pt; padding: 0cm 5.4pt;">
  <p class="MsoNormal" align="left" style="text-indent: 0cm;"><span lang="EN-US">ID</span><span style="font-family:
  宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:&quot;Times New Roman&quot;">，自增</span><span lang="EN-US"><o:p></o:p></span></p>
  </td>
 </tr>
 <tr>
  <td width="151" valign="top" style="width: 113.25pt; border-right-color: windowtext; border-bottom-color: windowtext; border-left-color: windowtext; border-right-width: 1pt; border-bottom-width: 1pt; border-left-width: 1pt; border-top-style: none; padding: 0cm 5.4pt;">
  <p class="MsoNormal" style="text-indent:24.0pt"><span lang="EN-US">jsmc<o:p></o:p></span></p>
  </td>
  <td width="151" valign="top" style="width: 113.25pt; border-top-style: none; border-left-style: none; border-bottom-color: windowtext; border-bottom-width: 1pt; border-right-color: windowtext; border-right-width: 1pt; padding: 0cm 5.4pt;">
  <p class="MsoNormal" style="text-indent:24.0pt"><span lang="EN-US">varchar<o:p></o:p></span></p>
  </td>
  <td width="151" valign="top" style="width: 113.25pt; border-top-style: none; border-left-style: none; border-bottom-color: windowtext; border-bottom-width: 1pt; border-right-color: windowtext; border-right-width: 1pt; padding: 0cm 5.4pt;">
  <p class="MsoNormal" align="left" style="text-indent: 0cm;"><span lang="EN-US"><o:p>&nbsp;</o:p></span></p>
  </td>
  <td width="151" valign="top" style="width: 113.25pt; border-top-style: none; border-left-style: none; border-bottom-color: windowtext; border-bottom-width: 1pt; border-right-color: windowtext; border-right-width: 1pt; padding: 0cm 5.4pt;">
  <p class="MsoNormal" align="left" style="text-indent: 0cm;"><span style="font-family:宋体;mso-ascii-font-family:
  &quot;Times New Roman&quot;;mso-hansi-font-family:&quot;Times New Roman&quot;">角色名称</span><span lang="EN-US"><o:p></o:p></span></p>
  </td>
 </tr>
 <tr>
  <td width="151" valign="top" style="width: 113.25pt; border-right-color: windowtext; border-bottom-color: windowtext; border-left-color: windowtext; border-right-width: 1pt; border-bottom-width: 1pt; border-left-width: 1pt; border-top-style: none; padding: 0cm 5.4pt;">
  <p class="MsoNormal" style="text-indent:24.0pt"><span lang="EN-US">jsms<o:p></o:p></span></p>
  </td>
  <td width="151" valign="top" style="width: 113.25pt; border-top-style: none; border-left-style: none; border-bottom-color: windowtext; border-bottom-width: 1pt; border-right-color: windowtext; border-right-width: 1pt; padding: 0cm 5.4pt;">
  <p class="MsoNormal" style="text-indent:24.0pt"><span lang="EN-US">varchar<o:p></o:p></span></p>
  </td>
  <td width="151" valign="top" style="width: 113.25pt; border-top-style: none; border-left-style: none; border-bottom-color: windowtext; border-bottom-width: 1pt; border-right-color: windowtext; border-right-width: 1pt; padding: 0cm 5.4pt;">
  <p class="MsoNormal" align="left" style="text-indent: 0cm;"><span lang="EN-US"><o:p>&nbsp;</o:p></span></p>
  </td>
  <td width="151" valign="top" style="width: 113.25pt; border-top-style: none; border-left-style: none; border-bottom-color: windowtext; border-bottom-width: 1pt; border-right-color: windowtext; border-right-width: 1pt; padding: 0cm 5.4pt;">
  <p class="MsoNormal" align="left" style="text-indent: 0cm;"><span style="font-family:宋体;mso-ascii-font-family:
  &quot;Times New Roman&quot;;mso-hansi-font-family:&quot;Times New Roman&quot;">角色描述</span><span lang="EN-US"><o:p></o:p></span></p>
  </td>
 </tr>
 <tr>
  <td width="151" valign="top" style="width: 113.25pt; border-right-color: windowtext; border-bottom-color: windowtext; border-left-color: windowtext; border-right-width: 1pt; border-bottom-width: 1pt; border-left-width: 1pt; border-top-style: none; padding: 0cm 5.4pt;">
  <p class="MsoNormal" style="text-indent:24.0pt"><span lang="EN-US">lrsj<o:p></o:p></span></p>
  </td>
  <td width="151" valign="top" style="width: 113.25pt; border-top-style: none; border-left-style: none; border-bottom-color: windowtext; border-bottom-width: 1pt; border-right-color: windowtext; border-right-width: 1pt; padding: 0cm 5.4pt;">
  <p class="MsoNormal" style="text-indent:24.0pt"><span lang="EN-US">datetime<o:p></o:p></span></p>
  </td>
  <td width="151" valign="top" style="width: 113.25pt; border-top-style: none; border-left-style: none; border-bottom-color: windowtext; border-bottom-width: 1pt; border-right-color: windowtext; border-right-width: 1pt; padding: 0cm 5.4pt;">
  <p class="MsoNormal" align="left" style="text-indent: 0cm;"><span lang="EN-US"><o:p>&nbsp;</o:p></span></p>
  </td>
  <td width="151" valign="top" style="width: 113.25pt; border-top-style: none; border-left-style: none; border-bottom-color: windowtext; border-bottom-width: 1pt; border-right-color: windowtext; border-right-width: 1pt; padding: 0cm 5.4pt;">
  <p class="MsoNormal" align="left" style="text-indent: 0cm;"><span style="font-family:宋体;mso-ascii-font-family:
  &quot;Times New Roman&quot;;mso-hansi-font-family:&quot;Times New Roman&quot;">修改时间</span><span lang="EN-US"><o:p></o:p></span></p>
  </td>
 </tr>
</tbody></table>

<p class="MsoNormal" align="left" style="text-indent: 0cm;"><span lang="EN-US"><o:p>&nbsp;</o:p></span></p>

<table class="MsoTableGrid" border="1" cellspacing="0" cellpadding="0" style="border: none;">
 <tbody><tr>
  <td width="604" colspan="4" style="width: 453pt; border-color: windowtext; border-width: 1pt; padding: 0cm 5.4pt;">
  <p class="MsoNormal" align="center" style="text-align:center;text-indent:0cm;
  mso-char-indent-count:0"><span lang="EN-US">t_xt_js_gns<o:p></o:p></span></p>
  </td>
 </tr>
 <tr>
  <td width="151" style="width: 113.25pt; border-right-color: windowtext; border-bottom-color: windowtext; border-left-color: windowtext; border-right-width: 1pt; border-bottom-width: 1pt; border-left-width: 1pt; border-top-style: none; padding: 0cm 5.4pt;">
  <p class="MsoNormal" align="center" style="text-align:center;text-indent:0cm;
  mso-char-indent-count:0"><span style="font-family:宋体;mso-ascii-font-family:
  &quot;Times New Roman&quot;;mso-hansi-font-family:&quot;Times New Roman&quot;">字段名称</span><span lang="EN-US"><o:p></o:p></span></p>
  </td>
  <td width="151" style="width: 113.25pt; border-top-style: none; border-left-style: none; border-bottom-color: windowtext; border-bottom-width: 1pt; border-right-color: windowtext; border-right-width: 1pt; padding: 0cm 5.4pt;">
  <p class="MsoNormal" align="center" style="text-align:center;text-indent:0cm;
  mso-char-indent-count:0"><span style="font-family:宋体;mso-ascii-font-family:
  &quot;Times New Roman&quot;;mso-hansi-font-family:&quot;Times New Roman&quot;">数据类型</span><span lang="EN-US"><o:p></o:p></span></p>
  </td>
  <td width="151" style="width: 113.25pt; border-top-style: none; border-left-style: none; border-bottom-color: windowtext; border-bottom-width: 1pt; border-right-color: windowtext; border-right-width: 1pt; padding: 0cm 5.4pt;">
  <p class="MsoNormal" align="center" style="text-align:center;text-indent:0cm;
  mso-char-indent-count:0"><span style="font-family:宋体;mso-ascii-font-family:
  &quot;Times New Roman&quot;;mso-hansi-font-family:&quot;Times New Roman&quot;">主键</span><span lang="EN-US"><o:p></o:p></span></p>
  </td>
  <td width="151" style="width: 113.25pt; border-top-style: none; border-left-style: none; border-bottom-color: windowtext; border-bottom-width: 1pt; border-right-color: windowtext; border-right-width: 1pt; padding: 0cm 5.4pt;">
  <p class="MsoNormal" align="center" style="text-align:center;text-indent:0cm;
  mso-char-indent-count:0"><span style="font-family:宋体;mso-ascii-font-family:
  &quot;Times New Roman&quot;;mso-hansi-font-family:&quot;Times New Roman&quot;">注释</span><span lang="EN-US"><o:p></o:p></span></p>
  </td>
 </tr>
 <tr>
  <td width="151" valign="top" style="width: 113.25pt; border-right-color: windowtext; border-bottom-color: windowtext; border-left-color: windowtext; border-right-width: 1pt; border-bottom-width: 1pt; border-left-width: 1pt; border-top-style: none; padding: 0cm 5.4pt;">
  <p class="MsoNormal" style="text-indent:24.0pt"><span lang="EN-US">jsid<o:p></o:p></span></p>
  </td>
  <td width="151" valign="top" style="width: 113.25pt; border-top-style: none; border-left-style: none; border-bottom-color: windowtext; border-bottom-width: 1pt; border-right-color: windowtext; border-right-width: 1pt; padding: 0cm 5.4pt;">
  <p class="MsoNormal" style="text-indent:24.0pt"><span lang="EN-US">int<o:p></o:p></span></p>
  </td>
  <td width="151" valign="top" style="width: 113.25pt; border-top-style: none; border-left-style: none; border-bottom-color: windowtext; border-bottom-width: 1pt; border-right-color: windowtext; border-right-width: 1pt; padding: 0cm 5.4pt;">
  <p class="MsoNormal" align="left" style="text-indent: 0cm;"><span lang="EN-US">KEY<o:p></o:p></span></p>
  </td>
  <td width="151" valign="top" style="width: 113.25pt; border-top-style: none; border-left-style: none; border-bottom-color: windowtext; border-bottom-width: 1pt; border-right-color: windowtext; border-right-width: 1pt; padding: 0cm 5.4pt;">
  <p class="MsoNormal" align="left" style="text-indent: 0cm;"><span style="font-family:宋体;mso-ascii-font-family:
  &quot;Times New Roman&quot;;mso-hansi-font-family:&quot;Times New Roman&quot;">角色</span><span lang="EN-US">ID<o:p></o:p></span></p>
  </td>
 </tr>
 <tr>
  <td width="151" valign="top" style="width: 113.25pt; border-right-color: windowtext; border-bottom-color: windowtext; border-left-color: windowtext; border-right-width: 1pt; border-bottom-width: 1pt; border-left-width: 1pt; border-top-style: none; padding: 0cm 5.4pt;">
  <p class="MsoNormal" style="text-indent:24.0pt"><span lang="EN-US">gnid<o:p></o:p></span></p>
  </td>
  <td width="151" valign="top" style="width: 113.25pt; border-top-style: none; border-left-style: none; border-bottom-color: windowtext; border-bottom-width: 1pt; border-right-color: windowtext; border-right-width: 1pt; padding: 0cm 5.4pt;">
  <p class="MsoNormal" style="text-indent:24.0pt"><span lang="EN-US">int<o:p></o:p></span></p>
  </td>
  <td width="151" valign="top" style="width: 113.25pt; border-top-style: none; border-left-style: none; border-bottom-color: windowtext; border-bottom-width: 1pt; border-right-color: windowtext; border-right-width: 1pt; padding: 0cm 5.4pt;">
  <p class="MsoNormal" align="left" style="text-indent: 0cm;"><span lang="EN-US">KEY<o:p></o:p></span></p>
  </td>
  <td width="151" valign="top" style="width: 113.25pt; border-top-style: none; border-left-style: none; border-bottom-color: windowtext; border-bottom-width: 1pt; border-right-color: windowtext; border-right-width: 1pt; padding: 0cm 5.4pt;">
  <p class="MsoNormal" align="left" style="text-indent: 0cm;"><span style="font-family:宋体;mso-ascii-font-family:
  &quot;Times New Roman&quot;;mso-hansi-font-family:&quot;Times New Roman&quot;">功能</span><span lang="EN-US">ID<o:p></o:p></span></p>
  </td>
 </tr>
</tbody></table>

<p class="MsoNormal" align="left" style="text-indent: 0cm;"><span lang="EN-US"><o:p>&nbsp;</o:p></span></p>

<table class="MsoTableGrid" border="1" cellspacing="0" cellpadding="0" style="border: none;">
 <tbody><tr>
  <td width="604" colspan="4" style="width: 453pt; border-color: windowtext; border-width: 1pt; padding: 0cm 5.4pt;">
  <p class="MsoNormal" align="center" style="text-align:center;text-indent:0cm;
  mso-char-indent-count:0"><span lang="EN-US">t_xt_user<o:p></o:p></span></p>
  </td>
 </tr>
 <tr>
  <td width="151" style="width: 113.25pt; border-right-color: windowtext; border-bottom-color: windowtext; border-left-color: windowtext; border-right-width: 1pt; border-bottom-width: 1pt; border-left-width: 1pt; border-top-style: none; padding: 0cm 5.4pt;">
  <p class="MsoNormal" align="center" style="text-align:center;text-indent:0cm;
  mso-char-indent-count:0"><span style="font-family:宋体;mso-ascii-font-family:
  &quot;Times New Roman&quot;;mso-hansi-font-family:&quot;Times New Roman&quot;">字段名称</span><span lang="EN-US"><o:p></o:p></span></p>
  </td>
  <td width="151" style="width: 113.25pt; border-top-style: none; border-left-style: none; border-bottom-color: windowtext; border-bottom-width: 1pt; border-right-color: windowtext; border-right-width: 1pt; padding: 0cm 5.4pt;">
  <p class="MsoNormal" align="center" style="text-align:center;text-indent:0cm;
  mso-char-indent-count:0"><span style="font-family:宋体;mso-ascii-font-family:
  &quot;Times New Roman&quot;;mso-hansi-font-family:&quot;Times New Roman&quot;">数据类型</span><span lang="EN-US"><o:p></o:p></span></p>
  </td>
  <td width="151" style="width: 113.25pt; border-top-style: none; border-left-style: none; border-bottom-color: windowtext; border-bottom-width: 1pt; border-right-color: windowtext; border-right-width: 1pt; padding: 0cm 5.4pt;">
  <p class="MsoNormal" align="center" style="text-align:center;text-indent:0cm;
  mso-char-indent-count:0"><span style="font-family:宋体;mso-ascii-font-family:
  &quot;Times New Roman&quot;;mso-hansi-font-family:&quot;Times New Roman&quot;">主键</span><span lang="EN-US"><o:p></o:p></span></p>
  </td>
  <td width="151" style="width: 113.25pt; border-top-style: none; border-left-style: none; border-bottom-color: windowtext; border-bottom-width: 1pt; border-right-color: windowtext; border-right-width: 1pt; padding: 0cm 5.4pt;">
  <p class="MsoNormal" align="center" style="text-align:center;text-indent:0cm;
  mso-char-indent-count:0"><span style="font-family:宋体;mso-ascii-font-family:
  &quot;Times New Roman&quot;;mso-hansi-font-family:&quot;Times New Roman&quot;">注释</span><span lang="EN-US"><o:p></o:p></span></p>
  </td>
 </tr>
 <tr>
  <td width="151" valign="top" style="width: 113.25pt; border-right-color: windowtext; border-bottom-color: windowtext; border-left-color: windowtext; border-right-width: 1pt; border-bottom-width: 1pt; border-left-width: 1pt; border-top-style: none; padding: 0cm 5.4pt;">
  <p class="MsoNormal" style="text-indent:24.0pt"><span lang="EN-US">id<o:p></o:p></span></p>
  </td>
  <td width="151" valign="top" style="width: 113.25pt; border-top-style: none; border-left-style: none; border-bottom-color: windowtext; border-bottom-width: 1pt; border-right-color: windowtext; border-right-width: 1pt; padding: 0cm 5.4pt;">
  <p class="MsoNormal" style="text-indent:24.0pt"><span lang="EN-US">int<o:p></o:p></span></p>
  </td>
  <td width="151" valign="top" style="width: 113.25pt; border-top-style: none; border-left-style: none; border-bottom-color: windowtext; border-bottom-width: 1pt; border-right-color: windowtext; border-right-width: 1pt; padding: 0cm 5.4pt;">
  <p class="MsoNormal" align="left" style="text-indent: 0cm;"><span lang="EN-US">Key<o:p></o:p></span></p>
  </td>
  <td width="151" valign="top" style="width: 113.25pt; border-top-style: none; border-left-style: none; border-bottom-color: windowtext; border-bottom-width: 1pt; border-right-color: windowtext; border-right-width: 1pt; padding: 0cm 5.4pt;">
  <p class="MsoNormal" align="left" style="text-indent: 0cm;"><span lang="EN-US">ID</span><span style="font-family:
  宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:&quot;Times New Roman&quot;">，自增</span><span lang="EN-US"><o:p></o:p></span></p>
  </td>
 </tr>
 <tr>
  <td width="151" valign="top" style="width: 113.25pt; border-right-color: windowtext; border-bottom-color: windowtext; border-left-color: windowtext; border-right-width: 1pt; border-bottom-width: 1pt; border-left-width: 1pt; border-top-style: none; padding: 0cm 5.4pt;">
  <p class="MsoNormal" style="text-indent:24.0pt"><span lang="EN-US">username<o:p></o:p></span></p>
  </td>
  <td width="151" valign="top" style="width: 113.25pt; border-top-style: none; border-left-style: none; border-bottom-color: windowtext; border-bottom-width: 1pt; border-right-color: windowtext; border-right-width: 1pt; padding: 0cm 5.4pt;">
  <p class="MsoNormal" style="text-indent:24.0pt"><span lang="EN-US">varchar<o:p></o:p></span></p>
  </td>
  <td width="151" valign="top" style="width: 113.25pt; border-top-style: none; border-left-style: none; border-bottom-color: windowtext; border-bottom-width: 1pt; border-right-color: windowtext; border-right-width: 1pt; padding: 0cm 5.4pt;">
  <p class="MsoNormal" align="left" style="text-indent: 0cm;"><span lang="EN-US"><o:p>&nbsp;</o:p></span></p>
  </td>
  <td width="151" valign="top" style="width: 113.25pt; border-top-style: none; border-left-style: none; border-bottom-color: windowtext; border-bottom-width: 1pt; border-right-color: windowtext; border-right-width: 1pt; padding: 0cm 5.4pt;">
  <p class="MsoNormal" align="left" style="text-indent: 0cm;"><span style="font-family:宋体;mso-ascii-font-family:
  &quot;Times New Roman&quot;;mso-hansi-font-family:&quot;Times New Roman&quot;">用户名</span><span lang="EN-US"><o:p></o:p></span></p>
  </td>
 </tr>
 <tr>
  <td width="151" valign="top" style="width: 113.25pt; border-right-color: windowtext; border-bottom-color: windowtext; border-left-color: windowtext; border-right-width: 1pt; border-bottom-width: 1pt; border-left-width: 1pt; border-top-style: none; padding: 0cm 5.4pt;">
  <p class="MsoNormal" style="text-indent:24.0pt"><span lang="EN-US">pwd<o:p></o:p></span></p>
  </td>
  <td width="151" valign="top" style="width: 113.25pt; border-top-style: none; border-left-style: none; border-bottom-color: windowtext; border-bottom-width: 1pt; border-right-color: windowtext; border-right-width: 1pt; padding: 0cm 5.4pt;">
  <p class="MsoNormal" style="text-indent:24.0pt"><span lang="EN-US">varchar<o:p></o:p></span></p>
  </td>
  <td width="151" valign="top" style="width: 113.25pt; border-top-style: none; border-left-style: none; border-bottom-color: windowtext; border-bottom-width: 1pt; border-right-color: windowtext; border-right-width: 1pt; padding: 0cm 5.4pt;">
  <p class="MsoNormal" align="left" style="text-indent: 0cm;"><span lang="EN-US"><o:p>&nbsp;</o:p></span></p>
  </td>
  <td width="151" valign="top" style="width: 113.25pt; border-top-style: none; border-left-style: none; border-bottom-color: windowtext; border-bottom-width: 1pt; border-right-color: windowtext; border-right-width: 1pt; padding: 0cm 5.4pt;">
  <p class="MsoNormal" align="left" style="text-indent: 0cm;"><span style="font-family:宋体;mso-ascii-font-family:
  &quot;Times New Roman&quot;;mso-hansi-font-family:&quot;Times New Roman&quot;">密码</span><span lang="EN-US"><o:p></o:p></span></p>
  </td>
 </tr>
 <tr>
  <td width="151" valign="top" style="width: 113.25pt; border-right-color: windowtext; border-bottom-color: windowtext; border-left-color: windowtext; border-right-width: 1pt; border-bottom-width: 1pt; border-left-width: 1pt; border-top-style: none; padding: 0cm 5.4pt;">
  <p class="MsoNormal" style="text-indent:24.0pt"><span lang="EN-US">rname<o:p></o:p></span></p>
  </td>
  <td width="151" valign="top" style="width: 113.25pt; border-top-style: none; border-left-style: none; border-bottom-color: windowtext; border-bottom-width: 1pt; border-right-color: windowtext; border-right-width: 1pt; padding: 0cm 5.4pt;">
  <p class="MsoNormal" style="text-indent:24.0pt"><span lang="EN-US">varchar<o:p></o:p></span></p>
  </td>
  <td width="151" valign="top" style="width: 113.25pt; border-top-style: none; border-left-style: none; border-bottom-color: windowtext; border-bottom-width: 1pt; border-right-color: windowtext; border-right-width: 1pt; padding: 0cm 5.4pt;">
  <p class="MsoNormal" align="left" style="text-indent: 0cm;"><span lang="EN-US"><o:p>&nbsp;</o:p></span></p>
  </td>
  <td width="151" valign="top" style="width: 113.25pt; border-top-style: none; border-left-style: none; border-bottom-color: windowtext; border-bottom-width: 1pt; border-right-color: windowtext; border-right-width: 1pt; padding: 0cm 5.4pt;">
  <p class="MsoNormal" align="left" style="text-indent: 0cm;"><span style="font-family:宋体;mso-ascii-font-family:
  &quot;Times New Roman&quot;;mso-hansi-font-family:&quot;Times New Roman&quot;">真实姓名</span><span lang="EN-US"><o:p></o:p></span></p>
  </td>
 </tr>
 <tr>
  <td width="151" valign="top" style="width: 113.25pt; border-right-color: windowtext; border-bottom-color: windowtext; border-left-color: windowtext; border-right-width: 1pt; border-bottom-width: 1pt; border-left-width: 1pt; border-top-style: none; padding: 0cm 5.4pt;">
  <p class="MsoNormal" style="text-indent:24.0pt"><span lang="EN-US">email<o:p></o:p></span></p>
  </td>
  <td width="151" valign="top" style="width: 113.25pt; border-top-style: none; border-left-style: none; border-bottom-color: windowtext; border-bottom-width: 1pt; border-right-color: windowtext; border-right-width: 1pt; padding: 0cm 5.4pt;">
  <p class="MsoNormal" style="text-indent:24.0pt"><span lang="EN-US">varchar<o:p></o:p></span></p>
  </td>
  <td width="151" valign="top" style="width: 113.25pt; border-top-style: none; border-left-style: none; border-bottom-color: windowtext; border-bottom-width: 1pt; border-right-color: windowtext; border-right-width: 1pt; padding: 0cm 5.4pt;">
  <p class="MsoNormal" align="left" style="text-indent: 0cm;"><span lang="EN-US"><o:p>&nbsp;</o:p></span></p>
  </td>
  <td width="151" valign="top" style="width: 113.25pt; border-top-style: none; border-left-style: none; border-bottom-color: windowtext; border-bottom-width: 1pt; border-right-color: windowtext; border-right-width: 1pt; padding: 0cm 5.4pt;">
  <p class="MsoNormal" align="left" style="text-indent: 0cm;"><span lang="EN-US">Email<o:p></o:p></span></p>
  </td>
 </tr>
 <tr>
  <td width="151" valign="top" style="width: 113.25pt; border-right-color: windowtext; border-bottom-color: windowtext; border-left-color: windowtext; border-right-width: 1pt; border-bottom-width: 1pt; border-left-width: 1pt; border-top-style: none; padding: 0cm 5.4pt;">
  <p class="MsoNormal" style="text-indent:24.0pt"><span lang="EN-US">phone<o:p></o:p></span></p>
  </td>
  <td width="151" valign="top" style="width: 113.25pt; border-top-style: none; border-left-style: none; border-bottom-color: windowtext; border-bottom-width: 1pt; border-right-color: windowtext; border-right-width: 1pt; padding: 0cm 5.4pt;">
  <p class="MsoNormal" style="text-indent:24.0pt"><span lang="EN-US">varchar<o:p></o:p></span></p>
  </td>
  <td width="151" valign="top" style="width: 113.25pt; border-top-style: none; border-left-style: none; border-bottom-color: windowtext; border-bottom-width: 1pt; border-right-color: windowtext; border-right-width: 1pt; padding: 0cm 5.4pt;">
  <p class="MsoNormal" align="left" style="text-indent: 0cm;"><span lang="EN-US"><o:p>&nbsp;</o:p></span></p>
  </td>
  <td width="151" valign="top" style="width: 113.25pt; border-top-style: none; border-left-style: none; border-bottom-color: windowtext; border-bottom-width: 1pt; border-right-color: windowtext; border-right-width: 1pt; padding: 0cm 5.4pt;">
  <p class="MsoNormal" align="left" style="text-indent: 0cm;"><span style="font-family:宋体;mso-ascii-font-family:
  &quot;Times New Roman&quot;;mso-hansi-font-family:&quot;Times New Roman&quot;">电话</span><span lang="EN-US"><o:p></o:p></span></p>
  </td>
 </tr>
 <tr>
  <td width="151" valign="top" style="width: 113.25pt; border-right-color: windowtext; border-bottom-color: windowtext; border-left-color: windowtext; border-right-width: 1pt; border-bottom-width: 1pt; border-left-width: 1pt; border-top-style: none; padding: 0cm 5.4pt;">
  <p class="MsoNormal" style="text-indent:24.0pt"><span lang="EN-US">zcsj<o:p></o:p></span></p>
  </td>
  <td width="151" valign="top" style="width: 113.25pt; border-top-style: none; border-left-style: none; border-bottom-color: windowtext; border-bottom-width: 1pt; border-right-color: windowtext; border-right-width: 1pt; padding: 0cm 5.4pt;">
  <p class="MsoNormal" style="text-indent:24.0pt"><span lang="EN-US">datetime<o:p></o:p></span></p>
  </td>
  <td width="151" valign="top" style="width: 113.25pt; border-top-style: none; border-left-style: none; border-bottom-color: windowtext; border-bottom-width: 1pt; border-right-color: windowtext; border-right-width: 1pt; padding: 0cm 5.4pt;">
  <p class="MsoNormal" align="left" style="text-indent: 0cm;"><span lang="EN-US"><o:p>&nbsp;</o:p></span></p>
  </td>
  <td width="151" valign="top" style="width: 113.25pt; border-top-style: none; border-left-style: none; border-bottom-color: windowtext; border-bottom-width: 1pt; border-right-color: windowtext; border-right-width: 1pt; padding: 0cm 5.4pt;">
  <p class="MsoNormal" align="left" style="text-indent: 0cm;"><span style="font-family:宋体;mso-ascii-font-family:
  &quot;Times New Roman&quot;;mso-hansi-font-family:&quot;Times New Roman&quot;">修改时间</span><span lang="EN-US"><o:p></o:p></span></p>
  </td>
 </tr>
 <tr>
  <td width="151" valign="top" style="width: 113.25pt; border-right-color: windowtext; border-bottom-color: windowtext; border-left-color: windowtext; border-right-width: 1pt; border-bottom-width: 1pt; border-left-width: 1pt; border-top-style: none; padding: 0cm 5.4pt;">
  <p class="MsoNormal" style="text-indent:24.0pt"><span lang="EN-US">sfyx<o:p></o:p></span></p>
  </td>
  <td width="151" valign="top" style="width: 113.25pt; border-top-style: none; border-left-style: none; border-bottom-color: windowtext; border-bottom-width: 1pt; border-right-color: windowtext; border-right-width: 1pt; padding: 0cm 5.4pt;">
  <p class="MsoNormal" style="text-indent:24.0pt"><span lang="EN-US">char<o:p></o:p></span></p>
  </td>
  <td width="151" valign="top" style="width: 113.25pt; border-top-style: none; border-left-style: none; border-bottom-color: windowtext; border-bottom-width: 1pt; border-right-color: windowtext; border-right-width: 1pt; padding: 0cm 5.4pt;">
  <p class="MsoNormal" align="left" style="text-indent: 0cm;"><span lang="EN-US"><o:p>&nbsp;</o:p></span></p>
  </td>
  <td width="151" valign="top" style="width: 113.25pt; border-top-style: none; border-left-style: none; border-bottom-color: windowtext; border-bottom-width: 1pt; border-right-color: windowtext; border-right-width: 1pt; padding: 0cm 5.4pt;">
  <p class="MsoNormal" align="left" style="text-indent: 0cm;"><span style="font-family:宋体;mso-ascii-font-family:
  &quot;Times New Roman&quot;;mso-hansi-font-family:&quot;Times New Roman&quot;">有效标记默认</span><span lang="EN-US">1<o:p></o:p></span></p>
  </td>
 </tr>
</tbody></table>

<p class="MsoNormal" align="left" style="text-indent: 0cm;"><span lang="EN-US"><o:p>&nbsp;</o:p></span></p>

<table class="MsoTableGrid" border="1" cellspacing="0" cellpadding="0" style="border: none;">
 <tbody><tr>
  <td width="604" colspan="4" style="width: 453pt; border-color: windowtext; border-width: 1pt; padding: 0cm 5.4pt;">
  <p class="MsoNormal" align="center" style="text-align:center;text-indent:0cm;
  mso-char-indent-count:0"><span lang="EN-US">t_xt_user_js<o:p></o:p></span></p>
  </td>
 </tr>
 <tr>
  <td width="151" style="width: 113.25pt; border-right-color: windowtext; border-bottom-color: windowtext; border-left-color: windowtext; border-right-width: 1pt; border-bottom-width: 1pt; border-left-width: 1pt; border-top-style: none; padding: 0cm 5.4pt;">
  <p class="MsoNormal" align="center" style="text-align:center;text-indent:0cm;
  mso-char-indent-count:0"><span style="font-family:宋体;mso-ascii-font-family:
  &quot;Times New Roman&quot;;mso-hansi-font-family:&quot;Times New Roman&quot;">字段名称</span><span lang="EN-US"><o:p></o:p></span></p>
  </td>
  <td width="151" style="width: 113.25pt; border-top-style: none; border-left-style: none; border-bottom-color: windowtext; border-bottom-width: 1pt; border-right-color: windowtext; border-right-width: 1pt; padding: 0cm 5.4pt;">
  <p class="MsoNormal" align="center" style="text-align:center;text-indent:0cm;
  mso-char-indent-count:0"><span style="font-family:宋体;mso-ascii-font-family:
  &quot;Times New Roman&quot;;mso-hansi-font-family:&quot;Times New Roman&quot;">数据类型</span><span lang="EN-US"><o:p></o:p></span></p>
  </td>
  <td width="151" style="width: 113.25pt; border-top-style: none; border-left-style: none; border-bottom-color: windowtext; border-bottom-width: 1pt; border-right-color: windowtext; border-right-width: 1pt; padding: 0cm 5.4pt;">
  <p class="MsoNormal" align="center" style="text-align:center;text-indent:0cm;
  mso-char-indent-count:0"><span style="font-family:宋体;mso-ascii-font-family:
  &quot;Times New Roman&quot;;mso-hansi-font-family:&quot;Times New Roman&quot;">主键</span><span lang="EN-US"><o:p></o:p></span></p>
  </td>
  <td width="151" style="width: 113.25pt; border-top-style: none; border-left-style: none; border-bottom-color: windowtext; border-bottom-width: 1pt; border-right-color: windowtext; border-right-width: 1pt; padding: 0cm 5.4pt;">
  <p class="MsoNormal" align="center" style="text-align:center;text-indent:0cm;
  mso-char-indent-count:0"><span style="font-family:宋体;mso-ascii-font-family:
  &quot;Times New Roman&quot;;mso-hansi-font-family:&quot;Times New Roman&quot;">注释</span><span lang="EN-US"><o:p></o:p></span></p>
  </td>
 </tr>
 <tr>
  <td width="151" valign="top" style="width: 113.25pt; border-right-color: windowtext; border-bottom-color: windowtext; border-left-color: windowtext; border-right-width: 1pt; border-bottom-width: 1pt; border-left-width: 1pt; border-top-style: none; padding: 0cm 5.4pt;">
  <p class="MsoNormal" style="text-indent:24.0pt"><span lang="EN-US">userid<o:p></o:p></span></p>
  </td>
  <td width="151" valign="top" style="width: 113.25pt; border-top-style: none; border-left-style: none; border-bottom-color: windowtext; border-bottom-width: 1pt; border-right-color: windowtext; border-right-width: 1pt; padding: 0cm 5.4pt;">
  <p class="MsoNormal" style="text-indent:24.0pt"><span lang="EN-US">int<o:p></o:p></span></p>
  </td>
  <td width="151" valign="top" style="width: 113.25pt; border-top-style: none; border-left-style: none; border-bottom-color: windowtext; border-bottom-width: 1pt; border-right-color: windowtext; border-right-width: 1pt; padding: 0cm 5.4pt;">
  <p class="MsoNormal" align="left" style="text-indent: 0cm;"><span lang="EN-US">Key<o:p></o:p></span></p>
  </td>
  <td width="151" valign="top" style="width: 113.25pt; border-top-style: none; border-left-style: none; border-bottom-color: windowtext; border-bottom-width: 1pt; border-right-color: windowtext; border-right-width: 1pt; padding: 0cm 5.4pt;">
  <p class="MsoNormal" align="left" style="text-indent: 0cm;"><span style="font-family:宋体;mso-ascii-font-family:
  &quot;Times New Roman&quot;;mso-hansi-font-family:&quot;Times New Roman&quot;">用户</span><span lang="EN-US">id<o:p></o:p></span></p>
  </td>
 </tr>
 <tr>
  <td width="151" valign="top" style="width: 113.25pt; border-right-color: windowtext; border-bottom-color: windowtext; border-left-color: windowtext; border-right-width: 1pt; border-bottom-width: 1pt; border-left-width: 1pt; border-top-style: none; padding: 0cm 5.4pt;">
  <p class="MsoNormal" style="text-indent:24.0pt"><span lang="EN-US">jsid<o:p></o:p></span></p>
  </td>
  <td width="151" valign="top" style="width: 113.25pt; border-top-style: none; border-left-style: none; border-bottom-color: windowtext; border-bottom-width: 1pt; border-right-color: windowtext; border-right-width: 1pt; padding: 0cm 5.4pt;">
  <p class="MsoNormal" style="text-indent:24.0pt"><span lang="EN-US">int<o:p></o:p></span></p>
  </td>
  <td width="151" valign="top" style="width: 113.25pt; border-top-style: none; border-left-style: none; border-bottom-color: windowtext; border-bottom-width: 1pt; border-right-color: windowtext; border-right-width: 1pt; padding: 0cm 5.4pt;">
  <p class="MsoNormal" align="left" style="text-indent: 0cm;"><span lang="EN-US">Key<o:p></o:p></span></p>
  </td>
  <td width="151" valign="top" style="width: 113.25pt; border-top-style: none; border-left-style: none; border-bottom-color: windowtext; border-bottom-width: 1pt; border-right-color: windowtext; border-right-width: 1pt; padding: 0cm 5.4pt;">
  <p class="MsoNormal" align="left" style="text-indent: 0cm;"><span style="font-family:宋体;mso-ascii-font-family:
  &quot;Times New Roman&quot;;mso-hansi-font-family:&quot;Times New Roman&quot;">角色</span><span lang="EN-US">id<o:p></o:p></span></p>
  </td>
 </tr>
 <tr>
  <td width="151" valign="top" style="width: 113.25pt; border-right-color: windowtext; border-bottom-color: windowtext; border-left-color: windowtext; border-right-width: 1pt; border-bottom-width: 1pt; border-left-width: 1pt; border-top-style: none; padding: 0cm 5.4pt;">
  <p class="MsoNormal" style="text-indent:24.0pt"><span lang="EN-US">lrsj<o:p></o:p></span></p>
  </td>
  <td width="151" valign="top" style="width: 113.25pt; border-top-style: none; border-left-style: none; border-bottom-color: windowtext; border-bottom-width: 1pt; border-right-color: windowtext; border-right-width: 1pt; padding: 0cm 5.4pt;">
  <p class="MsoNormal" style="text-indent:24.0pt"><span lang="EN-US">varchar<o:p></o:p></span></p>
  </td>
  <td width="151" valign="top" style="width: 113.25pt; border-top-style: none; border-left-style: none; border-bottom-color: windowtext; border-bottom-width: 1pt; border-right-color: windowtext; border-right-width: 1pt; padding: 0cm 5.4pt;">
  <p class="MsoNormal" align="left" style="text-indent: 0cm;"><span lang="EN-US"><o:p>&nbsp;</o:p></span></p>
  </td>
  <td width="151" valign="top" style="width: 113.25pt; border-top-style: none; border-left-style: none; border-bottom-color: windowtext; border-bottom-width: 1pt; border-right-color: windowtext; border-right-width: 1pt; padding: 0cm 5.4pt;">
  <p class="MsoNormal" align="left" style="text-indent: 0cm;"><span style="font-family:宋体;mso-ascii-font-family:
  &quot;Times New Roman&quot;;mso-hansi-font-family:&quot;Times New Roman&quot;">修改时间</span><span lang="EN-US"><o:p></o:p></span></p>
  </td>
 </tr>
</tbody></table>

<p class="MsoNormal" align="left" style="text-indent: 0cm;"><span lang="EN-US"><o:p>&nbsp;</o:p></span></p>

<b><span lang="EN-US" style="font-size:16.0pt;font-family:&quot;Times New Roman&quot;,serif;
mso-fareast-font-family:宋体;mso-ansi-language:EN-US;mso-fareast-language:ZH-CN;
mso-bidi-language:AR-SA"><br clear="all" style="mso-special-character:line-break;
page-break-before:always">
</span></b>

<p class="MsoNormal" align="left" style="text-indent: 0cm; line-height: normal;"><span lang="EN-US" style="font-size:16.0pt;font-family:黑体;mso-bidi-font-family:宋体;
mso-font-kerning:18.0pt"><o:p>&nbsp;</o:p></span></p>

<h1 align="center" style="text-align:center;text-indent:32.0pt"><a name="_Toc416954720"><span style="font-size:16.0pt;line-height:150%;font-weight:
normal">第<span lang="EN-US">3</span>章 &nbsp;关键词抽取模块</span></a><span lang="EN-US" style="font-size:16.0pt;line-height:150%;font-weight:normal"><o:p></o:p></span></h1>

<p class="MsoNormal" style="text-indent:24.0pt"><span style="font-family:宋体;
mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:&quot;Times New Roman&quot;">在讲解</span><span lang="EN-US">WKE</span><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;
mso-hansi-font-family:&quot;Times New Roman&quot;">的算法逻辑之前我需要</span><span style="font-size:10.5pt;line-height:150%;font-family:宋体;mso-ascii-font-family:
&quot;Times New Roman&quot;;mso-hansi-font-family:&quot;Times New Roman&quot;">先引入一个常用的算法：维特比算法。</span><span lang="EN-US"><o:p></o:p></span></p>

<h2><a name="_Toc416954721"><span lang="EN-US">3.1&nbsp; </span>关于维特比算法</a><span lang="EN-US"><o:p></o:p></span></h2>

<p class="MsoNormal" style="text-indent:24.0pt"><span style="font-family:宋体;
mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:&quot;Times New Roman&quot;">什么是维特比算法？</span><span lang="EN-US"><o:p></o:p></span></p>

<p class="MsoNormal" style="text-indent:0cm;mso-char-indent-count:0;line-height:
normal"><span lang="EN-US"><v:shape id="图片_x0020_13" o:spid="_x0000_i1045" type="#_x0000_t75" style="width:453.75pt;height:74.25pt;
 visibility:visible;mso-wrap-style:square">
 <img src="${base}/images/xtsm_files/7b72359d-4bd8-432f-b8de-85971c23d408.png" o:title="">
</v:shape></span><span lang="EN-US"><o:p></o:p></span></p>

<p class="MsoNormal" style="text-indent:24.0pt"><span style="font-family:宋体;
mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:&quot;Times New Roman&quot;">如此看来（黑体字部分），我们需要在这里理解清楚如下几点概念：</span><span lang="EN-US"><o:p></o:p></span></p>

<p class="MsoNormal" style="margin-left:24.0pt;text-indent:0cm;mso-char-indent-count:
0"><span lang="EN-US">1</span><span style="font-family: 宋体;">．什么是</span><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;
mso-hansi-font-family:&quot;Times New Roman&quot;">隐马尔可夫模型；</span><span lang="EN-US" style="font-family: 'Microsoft YaHei UI', sans-serif;"><o:p></o:p></span></p>

<p class="MsoNormal" style="margin-left:24.0pt;text-indent:0cm;mso-char-indent-count:
0"><span lang="EN-US">2</span><span style="font-family:宋体;mso-ascii-font-family:
&quot;Times New Roman&quot;;mso-hansi-font-family:&quot;Times New Roman&quot;">．什么是维特比算法；</span><span lang="EN-US" style="font-family: 'Microsoft YaHei UI', sans-serif;"><o:p></o:p></span></p>

<p class="MsoNormal" style="margin-left:24.0pt;text-indent:0cm;mso-char-indent-count:
0"><span lang="EN-US">3</span><span style="font-family:宋体;mso-ascii-font-family:
&quot;Times New Roman&quot;;mso-hansi-font-family:&quot;Times New Roman&quot;">．二者之间</span><span style="font-family: 'Microsoft YaHei UI', sans-serif;">的</span><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:
&quot;Times New Roman&quot;">关系是什么；</span><span lang="EN-US" style="font-family: 'Microsoft YaHei UI', sans-serif;"><o:p></o:p></span></p>

<p class="MsoNormal" style="text-indent:24.0pt"><span lang="EN-US">4</span><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:
&quot;Times New Roman&quot;">．</span><span lang="EN-US">WKE</span><span style="font-family:
宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:&quot;Times New Roman&quot;">是如何使用的以及使用的意义是什么。</span><span lang="EN-US"><o:p></o:p></span></p>

<h2><a name="_Toc416954722"><span lang="EN-US">3.2&nbsp; </span>隐马尔可夫模型</a><span lang="EN-US"><o:p></o:p></span></h2>

<p class="MsoNormal" align="left" style="text-indent: 0cm; line-height: 15.75pt;"><span lang="EN-US"><v:shape id="图片_x0020_21" o:spid="_x0000_i1044" type="#_x0000_t75" style="width:453.75pt;height:144.75pt;visibility:visible;mso-wrap-style:square">
 <img src="${base}/images/xtsm_files/e83e66c3-cf0b-4ca7-84ff-7facbb31bc6c.png" o:title="">
</v:shape></span><span lang="EN-US" style="font-size: 10.5pt; font-family: 'Microsoft YaHei UI', sans-serif;"><o:p></o:p></span></p>

<p class="MsoNormal" style="text-indent:24.0pt"><span style="font-family:宋体;
mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:&quot;Times New Roman&quot;">举一个经典的投掷骰子的例子：</span><span lang="EN-US"><o:p></o:p></span></p>

<p class="MsoNormal" align="left" style="text-indent: 24pt;"><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:
&quot;Times New Roman&quot;">三种不同的骰子。其中第一个骰子是六面体（称这个骰子为</span><span lang="EN-US">D6</span><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:
&quot;Times New Roman&quot;">），每个面分别有（</span><span lang="EN-US">1</span><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:
&quot;Times New Roman&quot;">，</span><span lang="EN-US">2</span><span style="font-family:
宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:&quot;Times New Roman&quot;">，</span><span lang="EN-US">3</span><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;
mso-hansi-font-family:&quot;Times New Roman&quot;">，</span><span lang="EN-US">4</span><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:
&quot;Times New Roman&quot;">，</span><span lang="EN-US">5</span><span style="font-family:
宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:&quot;Times New Roman&quot;">，</span><span lang="EN-US">6</span><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;
mso-hansi-font-family:&quot;Times New Roman&quot;">）</span><span lang="EN-US">6</span><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:
&quot;Times New Roman&quot;">个数字，则每个数字出现的概率是</span><span lang="EN-US">1/6</span><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:
&quot;Times New Roman&quot;">。第二个骰子是个四面体（</span><span lang="EN-US">D4</span><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:
&quot;Times New Roman&quot;">），每个面分别是（</span><span lang="EN-US">1</span><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:
&quot;Times New Roman&quot;">，</span><span lang="EN-US">2</span><span style="font-family:
宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:&quot;Times New Roman&quot;">，</span><span lang="EN-US">3</span><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;
mso-hansi-font-family:&quot;Times New Roman&quot;">，</span><span lang="EN-US">4</span><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:
&quot;Times New Roman&quot;">）</span><span lang="EN-US">4</span><span style="font-family:
宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:&quot;Times New Roman&quot;">个数字，那么每个数字出现的概率是</span><span lang="EN-US">1/4</span><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;
mso-hansi-font-family:&quot;Times New Roman&quot;">。第三个骰子有八面体（</span><span lang="EN-US">D8</span><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:
&quot;Times New Roman&quot;">），每个面分别为（</span><span lang="EN-US">1</span><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:
&quot;Times New Roman&quot;">，</span><span lang="EN-US">2</span><span style="font-family:
宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:&quot;Times New Roman&quot;">，</span><span lang="EN-US">3</span><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;
mso-hansi-font-family:&quot;Times New Roman&quot;">，</span><span lang="EN-US">4</span><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:
&quot;Times New Roman&quot;">，</span><span lang="EN-US">5</span><span style="font-family:
宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:&quot;Times New Roman&quot;">，</span><span lang="EN-US">6</span><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;
mso-hansi-font-family:&quot;Times New Roman&quot;">，</span><span lang="EN-US">7</span><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:
&quot;Times New Roman&quot;">，</span><span lang="EN-US">8</span><span style="font-family:
宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:&quot;Times New Roman&quot;">）</span><span lang="EN-US">8</span><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;
mso-hansi-font-family:&quot;Times New Roman&quot;">个数字，每个数字出现的概率是</span><span lang="EN-US">1/8</span><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:
&quot;Times New Roman&quot;">。</span><span lang="EN-US"><v:shape id="图片_x0020_22" o:spid="_x0000_i1043" type="#_x0000_t75" style="width:453pt;
 height:163.5pt;visibility:visible;mso-wrap-style:square">
 <img src="${base}/images/xtsm_files/203bff71-1f96-4608-b39c-b99229ff5bd4.png" o:title="">
</v:shape></span><span lang="EN-US" style="font-size: 10.5pt; line-height: 150%; font-family: 'Microsoft YaHei UI', sans-serif;"><o:p></o:p></span></p>

<p class="MsoNormal" style="text-indent:24.0pt"><span style="font-family:宋体;
mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:&quot;Times New Roman&quot;">开始掷骰子，我们从三个骰子里随意地选出一个来。这时我们要知道的是在自然情况下（不给予人为加权）其中每一个骰子被选中的概率都是</span><span lang="EN-US">1/3</span><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;
mso-hansi-font-family:&quot;Times New Roman&quot;">。然后掷选定的骰子得到</span><span lang="EN-US">1~8</span><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:
&quot;Times New Roman&quot;">中的一个数字。重复刚才的过程，我们会得到一个数字序列，这个序列中的每个数字都会是</span><span lang="EN-US">1~8</span><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;
mso-hansi-font-family:&quot;Times New Roman&quot;">中的一个数字。假设我们完成了</span><span lang="EN-US">10</span><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:
&quot;Times New Roman&quot;">次掷骰得到的数字序列为：</span><span lang="EN-US">7</span><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:
&quot;Times New Roman&quot;">，</span><span lang="EN-US">2</span><span style="font-family:
宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:&quot;Times New Roman&quot;">，</span><span lang="EN-US">2</span><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;
mso-hansi-font-family:&quot;Times New Roman&quot;">，</span><span lang="EN-US">1</span><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:
&quot;Times New Roman&quot;">，</span><span lang="EN-US">5</span><span style="font-family:
宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:&quot;Times New Roman&quot;">，</span><span lang="EN-US">3</span><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;
mso-hansi-font-family:&quot;Times New Roman&quot;">，</span><span lang="EN-US">7</span><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:
&quot;Times New Roman&quot;">，</span><span lang="EN-US">8</span><span style="font-family:
宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:&quot;Times New Roman&quot;">，</span><span lang="EN-US">3</span><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;
mso-hansi-font-family:&quot;Times New Roman&quot;">，</span><span lang="EN-US">1</span><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:
&quot;Times New Roman&quot;">。这哥序列被称作可见状态链。在之前提到的</span><span lang="EN-US">HMM</span><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:
&quot;Times New Roman&quot;">定义中我们得知，除了这一条可见状态链，还有一条隐含状态链。在这个例子中，这条隐含状态链就是掷骰子时使用的骰子（</span><span lang="EN-US">D6</span><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;
mso-hansi-font-family:&quot;Times New Roman&quot;">，</span><span lang="EN-US">D4</span><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:
&quot;Times New Roman&quot;">，</span><span lang="EN-US">D8</span><span style="font-family:
宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:&quot;Times New Roman&quot;">）的序列。比如说，这个隐含状态链可能会是：</span><span lang="EN-US">D8</span><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;
mso-hansi-font-family:&quot;Times New Roman&quot;">，</span><span lang="EN-US">D4</span><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:
&quot;Times New Roman&quot;">，</span><span lang="EN-US">D8</span><span style="font-family:
宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:&quot;Times New Roman&quot;">，</span><span lang="EN-US">D4</span><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;
mso-hansi-font-family:&quot;Times New Roman&quot;">，</span><span lang="EN-US">D6</span><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:
&quot;Times New Roman&quot;">，</span><span lang="EN-US">D8</span><span style="font-family:
宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:&quot;Times New Roman&quot;">，</span><span lang="EN-US">D8</span><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;
mso-hansi-font-family:&quot;Times New Roman&quot;">，</span><span lang="EN-US">D8</span><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:
&quot;Times New Roman&quot;">，</span><span lang="EN-US">D4</span><span style="font-family:
宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:&quot;Times New Roman&quot;">，</span><span lang="EN-US">D8</span><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;
mso-hansi-font-family:&quot;Times New Roman&quot;">。</span><span lang="EN-US"><o:p></o:p></span></p>

<p class="MsoNormal" style="text-indent:24.0pt"><span lang="EN-US">HMM</span><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:
&quot;Times New Roman&quot;">中所提到的马尔可夫链其实指的就是指这段隐含状态链，因为隐含状态之间存在转换概率。在这个例子的序列里，</span><span lang="EN-US">D8</span><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;
mso-hansi-font-family:&quot;Times New Roman&quot;">的下一个状态（骰子）是</span><span lang="EN-US">D4</span><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:
&quot;Times New Roman&quot;">，</span><span lang="EN-US">D6</span><span style="font-family:
宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:&quot;Times New Roman&quot;">，</span><span lang="EN-US">D8</span><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;
mso-hansi-font-family:&quot;Times New Roman&quot;">的概率都是</span><span lang="EN-US">1/3</span><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:
&quot;Times New Roman&quot;">。而</span><span lang="EN-US">D4</span><span style="font-family:
宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:&quot;Times New Roman&quot;">的下一个状态是</span><span lang="EN-US">D4</span><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;
mso-hansi-font-family:&quot;Times New Roman&quot;">，</span><span lang="EN-US">D6</span><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:
&quot;Times New Roman&quot;">，</span><span lang="EN-US">D8</span><span style="font-family:
宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:&quot;Times New Roman&quot;">的转换概率也都一样是</span><span lang="EN-US">1/3</span><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;
mso-hansi-font-family:&quot;Times New Roman&quot;">。也就是说，骰子的每一次状态转换的概率都是</span><span lang="EN-US">1/3</span><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;
mso-hansi-font-family:&quot;Times New Roman&quot;">，这样设定是在未人为加权的情况下的一种概率，然而这是在自然状态下的一种概率设置，我们可以针对不同的环境进行不同的权重设置。比如，定义：</span><span lang="EN-US">D8</span><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;
mso-hansi-font-family:&quot;Times New Roman&quot;">后面</span><span lang="EN-US">D4</span><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:
&quot;Times New Roman&quot;">的概率为</span><span lang="EN-US">0</span><span style="font-family:
宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:&quot;Times New Roman&quot;">，</span><span lang="EN-US">D8</span><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;
mso-hansi-font-family:&quot;Times New Roman&quot;">后面是</span><span lang="EN-US">D6</span><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:
&quot;Times New Roman&quot;">的概率是</span><span lang="EN-US">0.6</span><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:
&quot;Times New Roman&quot;">，是</span><span lang="EN-US">D8</span><span style="font-family:
宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:&quot;Times New Roman&quot;">的概率是</span><span lang="EN-US">0.4</span><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;
mso-hansi-font-family:&quot;Times New Roman&quot;">。在这种情况下就得到了一个新的</span><span lang="EN-US">HMM</span><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;
mso-hansi-font-family:&quot;Times New Roman&quot;">。</span><span lang="EN-US"><o:p></o:p></span></p>

<p class="MsoNormal" style="text-indent:24.0pt"><span style="font-family:宋体;
mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:&quot;Times New Roman&quot;">虽然在可见状态（数字序列）之间没有转换概率（相互独立，不曾存在关联性），但是隐含状态和可见状态之间存在一个输出概率。在这个掷骰问题中，</span><span lang="EN-US">D8</span><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;
mso-hansi-font-family:&quot;Times New Roman&quot;">打到</span><span lang="EN-US">7</span><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:
&quot;Times New Roman&quot;">的输出概率是</span><span lang="EN-US">1/8</span><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:
&quot;Times New Roman&quot;">。同样产生</span><span lang="EN-US">1</span><span style="font-family:
宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:&quot;Times New Roman&quot;">，</span><span lang="EN-US">2</span><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;
mso-hansi-font-family:&quot;Times New Roman&quot;">，</span><span lang="EN-US">3</span><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:
&quot;Times New Roman&quot;">，</span><span lang="EN-US">4</span><span style="font-family:
宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:&quot;Times New Roman&quot;">，</span><span lang="EN-US">5</span><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;
mso-hansi-font-family:&quot;Times New Roman&quot;">，</span><span lang="EN-US">6</span><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:
&quot;Times New Roman&quot;">，</span><span lang="EN-US">8</span><span style="font-family:
宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:&quot;Times New Roman&quot;">的概率同样也都是</span><span lang="EN-US">1/8</span><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;
mso-hansi-font-family:&quot;Times New Roman&quot;">。当然，我们依然可以对这种概率进行人为加权对其输出概率进行定义。</span><span lang="EN-US" style="font-family: 'Microsoft YaHei UI', sans-serif;"><o:p></o:p></span></p>

<p class="MsoNormal" align="center" style="text-align:center;text-indent:24.0pt;
line-height:15.75pt"><span lang="EN-US"><v:shape id="图片_x0020_50" o:spid="_x0000_i1042" type="#_x0000_t75" style="width:450pt;height:232.5pt;
 visibility:visible;mso-wrap-style:square">
 <img src="${base}/images/xtsm_files/83d2871d-51e1-47f4-bca6-3cbc84047071.png" o:title="">
</v:shape></span><span lang="EN-US" style="font-size: 10.5pt; font-family: 'Microsoft YaHei UI', sans-serif;"><o:p></o:p></span></p>

<p class="MsoNormal" align="center" style="text-align:center;text-indent:21.0pt;
line-height:15.75pt"><span lang="EN-US" style="font-size: 10.5pt; font-family: 'Microsoft YaHei UI', sans-serif;"><v:shape id="图片_x0020_26" o:spid="_x0000_i1041" type="#_x0000_t75" alt="53193f484ae89279da5a717a9d756089_b.jpg" style="width:282.75pt;
 height:237pt;visibility:visible;mso-wrap-style:square">
 <img src="${base}/images/xtsm_files/9b96f990-7a3a-4899-89f6-f9bac455101c.png" o:title="53193f484ae89279da5a717a9d756089_b">
</v:shape></span><span lang="EN-US" style="font-size: 10.5pt; font-family: 'Microsoft YaHei UI', sans-serif;"><o:p></o:p></span></p>

<p class="MsoNormal" style="text-indent:20.0pt"><span lang="EN-US" style="font-size:10.0pt;line-height:150%;font-family:&quot;Helvetica&quot;,sans-serif;
mso-fareast-font-family:&quot;Microsoft YaHei UI&quot;;mso-bidi-font-family:Helvetica"><br>
</span><span lang="EN-US">HMM</span><span style="font-family:宋体;mso-ascii-font-family:
&quot;Times New Roman&quot;;mso-hansi-font-family:&quot;Times New Roman&quot;">模型有关的算法可以分为以下三类，解决一下三种问题：</span><span lang="EN-US" style="font-size:10.0pt;line-height:150%;font-family:&quot;Helvetica&quot;,sans-serif;
mso-fareast-font-family:&quot;Microsoft YaHei UI&quot;;mso-bidi-font-family:Helvetica"><o:p></o:p></span></p>

<p class="MsoNormal" style="text-indent:0cm;mso-char-indent-count:0"><b><span lang="EN-US" style="font-family:宋体;
mso-ascii-theme-font:major-fareast;mso-fareast-theme-font:major-fareast;
mso-hansi-theme-font:major-fareast">1</span></b><b><span style="font-family:宋体;mso-ascii-theme-font:major-fareast;
mso-fareast-theme-font:major-fareast;mso-hansi-theme-font:major-fareast">）已知隐含状态数量并已知转换概率，根据可见状态链，得出隐含状态链。</span></b><span lang="EN-US"><o:p></o:p></span></p>

<p class="MsoNormal" style="text-indent:24.0pt"><span style="font-family:宋体;
mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:&quot;Times New Roman&quot;">该问题就涉及到了在自然语言领域的语言识别——解码问题。对于本次论文来讲设计到了中文分词与词性标注的算法实现。至于如何应用将在后边介绍。这个问题的解法就是求最大似然状态路径，简而言之就是求得一串序列，这串序列产生可见状态链的概率最大。</span><span lang="EN-US"><o:p></o:p></span></p>

<p class="MsoNormal" style="text-indent:24.0pt"><span lang="EN-US">HMM</span><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:
&quot;Times New Roman&quot;">的另外两种问题与本次系统关系不大，这里不在赘述，只给出核心论点：</span><span lang="EN-US"><o:p></o:p></span></p>

<p class="MsoNormal" style="text-indent:9.9pt;mso-char-indent-count:.82"><b><span lang="EN-US" style="font-family:宋体;mso-ascii-theme-font:minor-fareast;mso-fareast-theme-font:
minor-fareast;mso-hansi-theme-font:minor-fareast">2</span></b><b><span style="font-family:宋体;mso-ascii-theme-font:minor-fareast;mso-fareast-theme-font:
minor-fareast;mso-hansi-theme-font:minor-fareast">）已知隐含状态数量并已知转换概率，根据可见状态链，得出其概率。<span lang="EN-US"><o:p></o:p></span></span></b></p>

<p class="MsoNormal" style="text-indent:9.9pt;mso-char-indent-count:.82"><b><span lang="EN-US" style="font-family:宋体;mso-ascii-theme-font:minor-fareast;mso-fareast-theme-font:
minor-fareast;mso-hansi-theme-font:minor-fareast">3</span></b><b><span style="font-family:宋体;mso-ascii-theme-font:minor-fareast;mso-fareast-theme-font:
minor-fareast;mso-hansi-theme-font:minor-fareast">）已知隐含状态数量，根据若干可见状态链，得出转换概率。<span lang="EN-US"><o:p></o:p></span></span></b></p>

<h2 style="text-indent:0cm"><a name="_Toc416954723"><span lang="EN-US">3.3&nbsp; </span>维特比算法</a><span lang="EN-US"><o:p></o:p></span></h2>

<p class="MsoNormal" style="text-indent:24.0pt"><span style="font-family:宋体;
mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:&quot;Times New Roman&quot;">首先，理清问题的已知、未知条件：</span><span lang="EN-US"><o:p></o:p></span></p>

<p class="MsoNormal" style="text-indent:24.0pt"><span style="font-family:宋体;
mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:&quot;Times New Roman&quot;">有三个骰子：</span><span lang="EN-US">D6</span><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;
mso-hansi-font-family:&quot;Times New Roman&quot;">，</span><span lang="EN-US">D4</span><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:
&quot;Times New Roman&quot;">，</span><span lang="EN-US">D8</span><span style="font-family:
宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:&quot;Times New Roman&quot;">；以及抛掷十次的结果（</span><span lang="EN-US">7</span><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;
mso-hansi-font-family:&quot;Times New Roman&quot;">，</span><span lang="EN-US">2</span><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:
&quot;Times New Roman&quot;">，</span><span lang="EN-US">2</span><span style="font-family:
宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:&quot;Times New Roman&quot;">，</span><span lang="EN-US">1</span><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;
mso-hansi-font-family:&quot;Times New Roman&quot;">，</span><span lang="EN-US">5</span><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:
&quot;Times New Roman&quot;">，</span><span lang="EN-US">3</span><span style="font-family:
宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:&quot;Times New Roman&quot;">，</span><span lang="EN-US">7</span><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;
mso-hansi-font-family:&quot;Times New Roman&quot;">，</span><span lang="EN-US">8</span><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:
&quot;Times New Roman&quot;">，</span><span lang="EN-US">3</span><span style="font-family:
宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:&quot;Times New Roman&quot;">，</span><span lang="EN-US">1</span><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;
mso-hansi-font-family:&quot;Times New Roman&quot;">）。不知道每次用了哪个骰子。求最有可能的骰子序列是什么。</span><span lang="EN-US"><o:p></o:p></span></p>

<p class="MsoNormal" style="text-indent:24.0pt"><span style="font-family:宋体;
mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:&quot;Times New Roman&quot;">面对这养的问题其实不免有些熟悉了。在以前的学习概率统计的时候是有接触过的，最简单笨拙的办法无非就是穷举出所有的可能性，然后计算出每个序列对应的概率，再从这些概率中把对应最大概率的序列挑出来就好了。当然，如果马尔可夫链不长，该方法无外乎是最省时省力的。但是如果马尔科夫链是一个量级的概念的话，穷举的数量未免也太过庞大了，通过这种笨拙的死磕性计算方式来完成就太难了。</span><span lang="EN-US"><o:p></o:p></span></p>

<p class="MsoNormal" style="text-indent:24.0pt"><span style="font-family:宋体;
mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:&quot;Times New Roman&quot;">而另外一种解法就是应用本节开始提到的算法——维特比算法（</span><span lang="EN-US">Viterbi algorithm</span><span style="font-family:宋体;mso-ascii-font-family:
&quot;Times New Roman&quot;;mso-hansi-font-family:&quot;Times New Roman&quot;">）。</span><span lang="EN-US"><o:p></o:p></span></p>

<p class="MsoNormal" style="text-indent:0cm;mso-char-indent-count:0"><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:
&quot;Times New Roman&quot;">第一次掷骰子：</span><span lang="EN-US"><o:p></o:p></span></p>

<p class="MsoNormal" style="text-indent:0cm;mso-char-indent-count:0"><span lang="EN-US"><v:shape id="图片_x0020_52" o:spid="_x0000_i1040" type="#_x0000_t75" style="width:43.5pt;height:88.5pt;visibility:visible;
 mso-wrap-style:square">
 <img src="${base}/images/xtsm_files/53519f9f-a89c-4eed-a05f-f5b776c7c104.png" o:title="">
</v:shape></span><span lang="EN-US"><o:p></o:p></span></p>

<p class="MsoNormal" style="text-indent:0cm;mso-char-indent-count:0"><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:
&quot;Times New Roman&quot;">得到的结果为</span><span lang="EN-US">7</span><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:
&quot;Times New Roman&quot;">。三种骰子产生</span><span lang="EN-US">7</span><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:
&quot;Times New Roman&quot;">的概率分别为：</span><span lang="EN-US"><o:p></o:p></span></p>

<p class="MsoNormal" style="text-indent:24.0pt"><span lang="EN-US">D4</span><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:
&quot;Times New Roman&quot;">：</span><span lang="EN-US">0&nbsp;&nbsp;&nbsp;
D6:0&nbsp;&nbsp;&nbsp; D8:1/8<o:p></o:p></span></p>

<p class="MsoNormal" style="text-indent:24.0pt"><span style="font-family:宋体;
mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:&quot;Times New Roman&quot;">显然，</span><span lang="EN-US">D8</span><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;
mso-hansi-font-family:&quot;Times New Roman&quot;">得到</span><span lang="EN-US">7</span><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:
&quot;Times New Roman&quot;">的概率最大，因为</span><span lang="EN-US">D6</span><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:
&quot;Times New Roman&quot;">，</span><span lang="EN-US">D4</span><span style="font-family:
宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:&quot;Times New Roman&quot;">不可能得到</span><span lang="EN-US">7</span><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;
mso-hansi-font-family:&quot;Times New Roman&quot;">，概率为</span><span lang="EN-US">0</span><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:
&quot;Times New Roman&quot;">。</span><span lang="EN-US"><o:p></o:p></span></p>

<p class="MsoNormal" style="text-indent:0cm;mso-char-indent-count:0"><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:
&quot;Times New Roman&quot;">第二次掷骰子：</span><span lang="EN-US"><o:p></o:p></span></p>

<p class="MsoNormal" style="text-indent:0cm;mso-char-indent-count:0"><span lang="EN-US"><v:shape id="图片_x0020_53" o:spid="_x0000_i1039" type="#_x0000_t75" style="width:74.25pt;height:82.5pt;visibility:visible;
 mso-wrap-style:square">
 <img src="${base}/images/xtsm_files/d3f6854e-cc74-4018-b14f-8b288d922a41.png" o:title="">
</v:shape></span><span lang="EN-US"><o:p></o:p></span></p>

<p class="MsoNormal" style="text-indent:24.0pt"><span style="font-family:宋体;
mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:&quot;Times New Roman&quot;">得到的结果为</span><span lang="EN-US">7</span><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;
mso-hansi-font-family:&quot;Times New Roman&quot;">，</span><span lang="EN-US">2</span><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:
&quot;Times New Roman&quot;">。这时，问题相对比较难一点了，我们要计算三个值，分别是第二个骰子是</span><span lang="EN-US">D6</span><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:
&quot;Times New Roman&quot;">，</span><span lang="EN-US">D4</span><span style="font-family:
宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:&quot;Times New Roman&quot;">，</span><span lang="EN-US">D8</span><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;
mso-hansi-font-family:&quot;Times New Roman&quot;">的最大概率。而且，第一个骰子必须为</span><span lang="EN-US">D8</span><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;
mso-hansi-font-family:&quot;Times New Roman&quot;">。</span><span lang="EN-US"><o:p></o:p></span></p>

<p class="MsoNormal" style="text-indent:0cm;mso-char-indent-count:0"><span lang="EN-US">P2(D6)=P(D8)*P(D8-7)*P(D8-D6)*P(D6-2)=1/3*1/8*1/3*1/6<o:p></o:p></span></p>

<p class="MsoNormal" style="text-indent:0cm;mso-char-indent-count:0"><span lang="EN-US">P2(D8)=P(D8)*P(D8-7)*P(D8-D8)*P(D8-2)=1/3*1/8*1/3*1/8<o:p></o:p></span></p>

<p class="MsoNormal" style="text-indent:0cm;mso-char-indent-count:0"><span lang="EN-US">P2(D4)=P(D8)*P(D8-7)*P(D8-D4)*P(D4-2)=1/3*1/8*1/3*1/4<o:p></o:p></span></p>

<p class="MsoNormal" style="text-indent:24.0pt"><span style="font-family:宋体;
mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:&quot;Times New Roman&quot;">第二个骰子取到</span><span lang="EN-US">D4</span><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;
mso-hansi-font-family:&quot;Times New Roman&quot;">的概率最大。而要得到当前状态下的最大概率就要让第一个骰子为</span><span lang="EN-US">D8</span><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;
mso-hansi-font-family:&quot;Times New Roman&quot;">。所以最大概率骰子序列就是</span><span lang="EN-US">D8</span><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:
&quot;Times New Roman&quot;">，</span><span lang="EN-US">D4</span><span style="font-family:
宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:&quot;Times New Roman&quot;">。</span><span lang="EN-US" style="font-size:10.0pt;line-height:150%;font-family:&quot;Helvetica Neue&quot;,serif;
mso-fareast-font-family:&quot;Microsoft YaHei UI&quot;"><br>
</span><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;
mso-hansi-font-family:&quot;Times New Roman&quot;">第三次掷骰子：</span><span lang="EN-US" style="font-size:10.0pt;line-height:150%;font-family:&quot;Helvetica Neue&quot;,serif;
mso-fareast-font-family:&quot;Microsoft YaHei UI&quot;"><o:p></o:p></span></p>

<p class="MsoNormal" style="text-indent:0cm;mso-char-indent-count:0"><span lang="EN-US"><v:shape id="图片_x0020_54" o:spid="_x0000_i1038" type="#_x0000_t75" style="width:132pt;height:90.75pt;visibility:visible;
 mso-wrap-style:square">
 <img src="${base}/images/xtsm_files/7d6bde94-026b-4a3c-b79f-0a2f559fda2c.png" o:title="">
</v:shape></span><span lang="EN-US" style="font-size:10.0pt;line-height:150%;
font-family:&quot;Helvetica Neue&quot;,serif;mso-fareast-font-family:&quot;Microsoft YaHei UI&quot;"><o:p></o:p></span></p>

<p class="MsoNormal" style="text-indent:24.0pt"><span style="font-family:宋体;
mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:&quot;Times New Roman&quot;">同样，再来计算第三次掷骰是</span><span lang="EN-US">D6</span><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;
mso-hansi-font-family:&quot;Times New Roman&quot;">，</span><span lang="EN-US">D4</span><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:
&quot;Times New Roman&quot;">，</span><span lang="EN-US">D8</span><span style="font-family:
宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:&quot;Times New Roman&quot;">的最大概率。依照上一次的结论，我们应该明白要得到最大概率，第二次掷的骰子一定为</span><span lang="EN-US">D4</span><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;
mso-hansi-font-family:&quot;Times New Roman&quot;">。</span><span lang="EN-US"><o:p></o:p></span></p>

<p class="MsoNormal" style="text-indent:24.0pt"><span lang="EN-US">P3(D4)=P2(D4)*P(D4-D4)*P(D4-3)=1/288*1/3*1/4<o:p></o:p></span></p>

<p class="MsoNormal" style="text-indent:24.0pt"><span lang="EN-US">P3(D6)=P2(D4)*P(D4-D6)*P(D6-3)=1/288*1/3*1/6<o:p></o:p></span></p>

<p class="MsoNormal" style="text-indent:24.0pt"><span lang="EN-US">P3(D8)=P2(D4)*P(D4-D8)*P(D8-3)=1/288*1/3*1/8<o:p></o:p></span></p>

<p class="MsoNormal" style="text-indent:24.0pt"><span style="font-family:宋体;
mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:&quot;Times New Roman&quot;">第三次掷骰取到</span><span lang="EN-US">D4</span><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;
mso-hansi-font-family:&quot;Times New Roman&quot;">的概率为最大值。同样要取得次概率，第二次掷的骰子一定为</span><span lang="EN-US">D4</span><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;
mso-hansi-font-family:&quot;Times New Roman&quot;">，第一个骰子为</span><span lang="EN-US">D8</span><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:
&quot;Times New Roman&quot;">。所以最大概率序列就是</span><span lang="EN-US">D8</span><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:
&quot;Times New Roman&quot;">，</span><span lang="EN-US">D4</span><span style="font-family:
宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:&quot;Times New Roman&quot;">，</span><span lang="EN-US">D4</span><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;
mso-hansi-font-family:&quot;Times New Roman&quot;">。</span><span lang="EN-US"><o:p></o:p></span></p>

<p class="MsoNormal" style="text-indent:24.0pt"><span style="font-family:宋体;
mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:&quot;Times New Roman&quot;">到此为止我们可以得到一个规律：无论掷骰多少次，最后一次的最大概率只需要在前几次的结果上进行再计算。</span><span lang="EN-US"><o:p></o:p></span></p>

<p class="MsoNormal" style="text-indent:24.0pt"><span style="font-family:宋体;
mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:&quot;Times New Roman&quot;">复杂度分析：如果每一个骰子最多有</span><span lang="EN-US">X</span><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;
mso-hansi-font-family:&quot;Times New Roman&quot;">个数字，进行</span><span lang="EN-US">N</span><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:
&quot;Times New Roman&quot;">次掷骰子，那么，每次计算至多计算</span><span lang="EN-US" style="font-size:
10.5pt;line-height:150%;font-family:&quot;Helvetica Neue&quot;,serif;color:#333333;
background:white">X</span><sup><span lang="EN-US" style="font-size:10.5pt;
line-height:150%;font-family:&quot;Helvetica Neue&quot;,serif;color:#333333">2</span></sup><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:
&quot;Times New Roman&quot;">次至多计算</span><span lang="EN-US">N</span><span style="font-family:
宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:&quot;Times New Roman&quot;">次。复杂度立马降低为</span><span lang="EN-US">O</span><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;
mso-hansi-font-family:&quot;Times New Roman&quot;">（</span><span lang="EN-US" style="font-size:10.5pt;line-height:150%;font-family:&quot;Helvetica Neue&quot;,serif;
color:#333333;background:white">NX</span><sup><span lang="EN-US" style="font-size:10.5pt;line-height:150%;font-family:&quot;Helvetica Neue&quot;,serif;
color:#333333">2</span></sup><span style="font-family:宋体;mso-ascii-font-family:
&quot;Times New Roman&quot;;mso-hansi-font-family:&quot;Times New Roman&quot;">），这个计算量小于穷举</span><span lang="EN-US">O</span><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;
mso-hansi-font-family:&quot;Times New Roman&quot;">（</span><span lang="EN-US" style="font-size:10.5pt;line-height:150%;font-family:&quot;Helvetica Neue&quot;,serif;
color:#333333;background:white">X</span><sup><span lang="EN-US" style="font-size:
10.5pt;line-height:150%;font-family:&quot;Helvetica Neue&quot;,serif;color:#333333">N</span></sup><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:
&quot;Times New Roman&quot;">）太多了。由此看来用维特比算法的处理方式与第一种穷举的方式相比其复杂度大大降低。</span><span lang="EN-US"><o:p></o:p></span></p>

<h2><a name="_Toc416954724"><span lang="EN-US">3.4&nbsp; </span>维特比算法在分词中应用</a><span lang="EN-US"><o:p></o:p></span></h2>

<p class="MsoNormal" style="text-indent:0cm;mso-char-indent-count:0"><span lang="EN-US"><v:shape id="图片_x0020_55" o:spid="_x0000_i1037" type="#_x0000_t75" style="width:453.75pt;height:84pt;visibility:visible;
 mso-wrap-style:square">
 <img src="${base}/images/xtsm_files/851710ea-f331-42ca-9b03-cdb8ee0b6882.png" o:title="">
</v:shape></span><span lang="EN-US"><o:p></o:p></span></p>

<p class="MsoNormal" style="text-indent:24.0pt"><span lang="EN-US">RKES</span><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:
&quot;Times New Roman&quot;">项目的分词技术引荐于</span><span lang="EN-US">Anjs</span><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:
&quot;Times New Roman&quot;">的开源项目</span><span lang="EN-US">jar</span><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:
&quot;Times New Roman&quot;">包，该项目是</span><span lang="EN-US">ictclas</span><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:
&quot;Times New Roman&quot;">（中科院的分词系统）的</span><span lang="EN-US">Java</span><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:
&quot;Times New Roman&quot;">版本。其核心是封装的</span><span lang="EN-US">ansj_seg 2.0.8</span><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:
&quot;Times New Roman&quot;">版本。</span><span lang="EN-US"><o:p></o:p></span></p>

<p class="MsoNormal" style="text-indent:24.0pt"><span style="font-family:宋体;
mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:&quot;Times New Roman&quot;">其原理如下：</span><span lang="EN-US"><o:p></o:p></span></p>

<h3 style="text-indent:24.0pt"><a name="_Toc416954725"><span lang="EN-US">3.4.1&nbsp; </span></a><span style="font-family:宋体;mso-ascii-font-family:黑体;mso-fareast-font-family:宋体;
mso-fareast-theme-font:minor-fareast;mso-hansi-font-family:黑体">原子切分</span><span lang="EN-US"><o:p></o:p></span></h3>

<p class="MsoNormal" style="text-indent:24.0pt"><span style="font-family:宋体;
mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:&quot;Times New Roman&quot;">切分词语的过程是一个动态匹配的决策过程，叫做机械分词方法。这种方法是按照一定的算法策略将需要分析的文本序列与一个</span><span lang="EN-US">dic</span><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;
mso-hansi-font-family:&quot;Times New Roman&quot;">（词典）文件中的词语库进行匹配，若在词典中找到某个词组，则匹配成功（识别出一个词）。根据遍历的方向不同，切分词语的方法可以分为正向遍历匹配和逆向遍历匹配；按照长度不同的优先匹配情况，又可以分为最长遍历匹配和最短遍历匹配。</span><span lang="EN-US"><o:p></o:p></span></p>

<p class="MsoNormal" style="text-indent:24.0pt"><span style="font-family:宋体;
mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:&quot;Times New Roman&quot;">常用的几种机械分词方法如下：</span><span lang="EN-US"><o:p></o:p></span></p>

<p class="MsoNormal" style="text-indent:24.0pt"><span lang="EN-US">1</span><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:
&quot;Times New Roman&quot;">）正向最长遍历匹配法；</span><span lang="EN-US"><o:p></o:p></span></p>

<p class="MsoNormal" style="text-indent:24.0pt"><span lang="EN-US">2</span><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:
&quot;Times New Roman&quot;">）逆向最大遍历匹配法；</span><span lang="EN-US"><o:p></o:p></span></p>

<p class="MsoNormal" style="text-indent:24.0pt"><span lang="EN-US">3</span><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:
&quot;Times New Roman&quot;">）最少词语切分法；</span><span lang="EN-US"><o:p></o:p></span></p>

<p class="MsoNormal" style="text-indent:24.0pt"><span lang="EN-US">4</span><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:
&quot;Times New Roman&quot;">）双向最大匹配法（两次互为相反的扫描）。</span><span lang="EN-US"><o:p></o:p></span></p>

<p class="MsoNormal" style="text-indent:24.0pt"><span style="font-family:宋体;
mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:&quot;Times New Roman&quot;">而本系统使用的原子分词正向最大匹配的方法。当我们在系统中将一篇文章传进来以后，</span><span lang="EN-US">RKES</span><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;
mso-hansi-font-family:&quot;Times New Roman&quot;">先对全文进行全切分</span><span lang="EN-US">——</span><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:
&quot;Times New Roman&quot;">原子切分。</span><span lang="EN-US"><o:p></o:p></span></p>

<p class="MsoNormal" style="text-indent:24.0pt"><span style="font-family:宋体;
mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:&quot;Times New Roman&quot;">举一个比较经典的例子：</span><span lang="EN-US">“</span><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;
mso-hansi-font-family:&quot;Times New Roman&quot;">商品和服务</span><span lang="EN-US">”</span><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:
&quot;Times New Roman&quot;">：</span><span lang="EN-US"><o:p></o:p></span></p>

<p class="MsoNormal" style="text-indent:21.0pt;line-height:normal"><span style="font-size:10.5pt;font-family:楷体">开始<span lang="EN-US"><o:p></o:p></span></span></p>

<p class="MsoNormal" style="text-indent:21.0pt;line-height:normal"><span style="font-size:10.5pt;font-family:楷体">商品<span lang="EN-US">/n</span></span><span lang="EN-US" style="font-size:10.5pt;font-family:&quot;Calibri&quot;,sans-serif;mso-fareast-font-family:
楷体;mso-bidi-font-family:Calibri">&nbsp;</span><span style="font-size:10.5pt;
font-family:楷体">商<span lang="EN-US">/n<o:p></o:p></span></span></p>

<p class="MsoNormal" style="text-indent:21.0pt;line-height:normal"><span style="font-size:10.5pt;font-family:楷体">品<span lang="EN-US">/v<o:p></o:p></span></span></p>

<p class="MsoNormal" style="text-indent:21.0pt;line-height:normal"><span style="font-size:10.5pt;font-family:楷体">和服<span lang="EN-US">/n</span></span><span lang="EN-US" style="font-size:10.5pt;font-family:&quot;Calibri&quot;,sans-serif;mso-fareast-font-family:
楷体;mso-bidi-font-family:Calibri">&nbsp;</span><span style="font-size:10.5pt;
font-family:楷体">和<span lang="EN-US">/c<o:p></o:p></span></span></p>

<p class="MsoNormal" style="text-indent:21.0pt;line-height:normal"><span style="font-size:10.5pt;font-family:楷体">服务<span lang="EN-US">/vn</span></span><span lang="EN-US" style="font-size:10.5pt;font-family:&quot;Calibri&quot;,sans-serif;mso-fareast-font-family:
楷体;mso-bidi-font-family:Calibri">&nbsp;</span><span style="font-size:10.5pt;
font-family:楷体">服<span lang="EN-US">/v<o:p></o:p></span></span></p>

<p class="MsoNormal" style="text-indent:21.0pt;line-height:normal"><span style="font-size:10.5pt;font-family:楷体">务<span lang="EN-US">/dg</span></span><span lang="EN-US" style="font-size:10.5pt;font-family:&quot;Calibri&quot;,sans-serif;mso-fareast-font-family:
楷体;mso-bidi-font-family:Calibri">&nbsp;</span><span lang="EN-US" style="font-size:10.5pt;font-family:楷体"><o:p></o:p></span></p>

<p class="MsoNormal" style="text-indent:21.0pt;line-height:normal"><span style="font-size:10.5pt;font-family:楷体">结束<span lang="EN-US"><o:p></o:p></span></span></p>

<p class="MsoNormal" style="text-indent:24.0pt"><span style="font-family:宋体;
mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:&quot;Times New Roman&quot;">注意：为了便于理解词之间的差别，我也将词性进行了标注，但实际代码中词性标注是在后边完成的。</span><span lang="EN-US" style="font-size:9.0pt;line-height:150%"><o:p></o:p></span></p>

<p class="MsoNormal" style="text-indent:24.0pt"><span style="font-family:宋体;
mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:&quot;Times New Roman&quot;">每一行实际上有多列，分别是一个</span><span lang="EN-US">term</span><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;
mso-hansi-font-family:&quot;Times New Roman&quot;">和它的前缀</span><span lang="EN-US">term</span><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:
&quot;Times New Roman&quot;">（例如：</span><span style="font-size:9.0pt;line-height:150%;
font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:
&quot;Times New Roman&quot;">商品</span><span lang="EN-US" style="font-size:9.0pt;line-height:
150%">/n&nbsp;</span><span style="font-size:9.0pt;line-height:150%;font-family:
宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:&quot;Times New Roman&quot;">商</span><span lang="EN-US" style="font-size:9.0pt;line-height:150%">/n</span><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:
&quot;Times New Roman&quot;">）。如果没有多列的话（</span><span style="font-size:9.0pt;line-height:
150%;font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:
&quot;Times New Roman&quot;">品</span><span lang="EN-US" style="font-size:9.0pt;line-height:
150%">/v</span><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;
mso-hansi-font-family:&quot;Times New Roman&quot;">），也即是前缀</span><span lang="EN-US">term</span><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:
&quot;Times New Roman&quot;">是</span><span lang="EN-US">null</span><span style="font-family:
宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:&quot;Times New Roman&quot;">（</span><span lang="EN-US">null&nbsp;</span><span style="font-size:9.0pt;line-height:150%;
font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:
&quot;Times New Roman&quot;">品</span><span lang="EN-US" style="font-size:9.0pt;line-height:
150%">/v</span><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;
mso-hansi-font-family:&quot;Times New Roman&quot;">）。每一行实际上是通过</span><span lang="EN-US">Tire</span><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:
&quot;Times New Roman&quot;">树最长匹配找出来的最长词以及路径上路过的前缀相同词。</span><span lang="EN-US" style="mso-bidi-font-size:12.0pt;line-height:150%"><o:p></o:p></span></p>

<h3 style="text-indent:24.0pt"><a name="_Toc416954726"><span lang="EN-US">3.4.2&nbsp; </span></a><span style="font-family:宋体;mso-ascii-font-family:黑体;mso-fareast-font-family:宋体;
mso-fareast-theme-font:minor-fareast;mso-hansi-font-family:黑体">构图</span><span lang="EN-US"><o:p></o:p></span></h3>

<p class="MsoNormal" style="text-indent:24.0pt"><span style="font-family:宋体;
mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:&quot;Times New Roman&quot;">切分完成后，需要将这些词进行存储，即构图。</span><span lang="EN-US"><o:p></o:p></span></p>

<p class="MsoNormal" style="text-indent:24.0pt"><span style="font-family:宋体;
mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:&quot;Times New Roman&quot;">这里我们说到的所谓构图，就是使用构建邻接表来储存。利用每个</span><span lang="EN-US">term</span><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;
mso-hansi-font-family:&quot;Times New Roman&quot;">的</span><span lang="EN-US">offset</span><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:
&quot;Times New Roman&quot;">来判断它在什么位置，然后将</span><span lang="EN-US">term</span><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:
&quot;Times New Roman&quot;">加入到邻接表数组</span><span lang="EN-US">terms[offset]</span><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:
&quot;Times New Roman&quot;">处，如果</span><span lang="EN-US">terms[offset]</span><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:
&quot;Times New Roman&quot;">已经被占用了，那么就在写入之前，将</span><span lang="EN-US">term</span><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:
&quot;Times New Roman&quot;">的</span><span lang="EN-US">next</span><span style="font-family:
宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:&quot;Times New Roman&quot;">指针设为已存在的节点。</span><span lang="EN-US"><o:p></o:p></span></p>

<p class="MsoNormal" style="text-indent:24.0pt"><span style="font-family:宋体;
mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:&quot;Times New Roman&quot;">其实在</span><span lang="EN-US">Ansj</span><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;
mso-hansi-font-family:&quot;Times New Roman&quot;">分词的实现中，原子切分和构图是同时进行的，每切出一个词就将其加入到图中。为了好理解，我将其分为逻辑上的这两步。</span><span lang="EN-US"><o:p></o:p></span></p>

<p class="MsoNormal" style="text-indent:24.0pt"><span style="font-family:宋体;
mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:&quot;Times New Roman&quot;">经过构图，我们得到了如下有向图：</span><span lang="EN-US"><o:p></o:p></span></p>

<p class="MsoNormal" align="center" style="text-align:center;text-indent:24.0pt;
background:white"><span lang="EN-US" style="font-family:&quot;微软雅黑&quot;,sans-serif;
mso-no-proof:yes"><v:shape id="图片_x0020_31" o:spid="_x0000_i1036" type="#_x0000_t75" style="width:300.75pt;height:180.75pt;visibility:visible;mso-wrap-style:square">
 <img src="${base}/images/xtsm_files/b2203d5c-e5bc-4c52-a182-f9c8a97fba0f.png" o:title="26c3a944-d7a6-4f2c-b53d-370a2fc354d0">
</v:shape></span><span lang="EN-US" style="font-family:&quot;微软雅黑&quot;,sans-serif"><o:p></o:p></span></p>

<p class="MsoNormal" align="center" style="text-align:center;text-indent:24.0pt;
background:white"><span lang="EN-US" style="font-family:&quot;微软雅黑&quot;,sans-serif"><o:p>&nbsp;</o:p></span></p>

<h3 style="text-indent:24.0pt"><a name="_Toc416954727"><span lang="EN-US">3.4.3&nbsp; </span></a><span style="font-family:宋体;mso-ascii-font-family:黑体;mso-fareast-font-family:宋体;
mso-fareast-theme-font:minor-fareast;mso-hansi-font-family:黑体">计算距离</span><span lang="EN-US" style="font-size:
13.5pt;line-height:150%"><o:p></o:p></span></h3>

<p class="MsoNormal" style="text-indent:24.0pt"><span style="font-family:宋体;
mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:&quot;Times New Roman&quot;">为了计算两个节点</span><span lang="EN-US">term</span><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;
mso-hansi-font-family:&quot;Times New Roman&quot;">之间的距离，需要一份词典，这份<b>词典</b>在</span><span lang="EN-US">Ansj</span><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;
mso-hansi-font-family:&quot;Times New Roman&quot;">中对应于</span><span lang="EN-US">bigramdict.dic</span><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:
&quot;Times New Roman&quot;">这个文件。</span><span lang="EN-US" style="mso-bidi-font-size:12.0pt;
line-height:150%;font-family:&quot;微软雅黑&quot;,sans-serif;mso-fareast-font-family:宋体"><o:p></o:p></span></p>

<p class="MsoNormal" style="text-indent:24.0pt"><span style="font-family:宋体;
mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:&quot;Times New Roman&quot;">该文件下的格式可以简化理解为：</span><span lang="EN-US" style="font-family:&quot;微软雅黑&quot;,sans-serif;mso-fareast-font-family:宋体"><o:p></o:p></span></p>

<p class="MsoNormal" style="text-indent:24.0pt"><span lang="EN-US">&nbsp; &nbsp;
&nbsp; &nbsp;<b>&nbsp;</b></span><span style="font-family:宋体;mso-ascii-font-family:
&quot;Times New Roman&quot;;mso-hansi-font-family:&quot;Times New Roman&quot;;mso-bidi-font-weight:
bold">从（</span><span lang="EN-US">from</span><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:
&quot;Times New Roman&quot;;mso-bidi-font-weight:bold">）词</span><span lang="EN-US">1</span><span style="font-family:宋体;
mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:&quot;Times New Roman&quot;;
mso-bidi-font-weight:bold">到（</span><span lang="EN-US">to</span><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;
mso-hansi-font-family:&quot;Times New Roman&quot;;mso-bidi-font-weight:bold">）词</span><span lang="EN-US">2</span><span style="font-family:
宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:&quot;Times New Roman&quot;;
mso-bidi-font-weight:bold">的频次（</span><span lang="EN-US">frequency</span><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;
mso-hansi-font-family:&quot;Times New Roman&quot;;mso-bidi-font-weight:bold">）</span><span lang="EN-US" style="font-family:&quot;微软雅黑&quot;,sans-serif;mso-fareast-font-family:宋体"><o:p></o:p></span></p>

<p class="MsoNormal" style="text-indent:24.1pt"><b><span lang="EN-US">&nbsp; &nbsp;
&nbsp; &nbsp;&nbsp;</span></b><span style="font-family:宋体;mso-ascii-font-family:
&quot;Times New Roman&quot;;mso-hansi-font-family:&quot;Times New Roman&quot;;mso-bidi-font-weight:
bold">两个</span><span lang="EN-US">term</span><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:
&quot;Times New Roman&quot;;mso-bidi-font-weight:bold">间转换的频次越平凡，则它们之间的距离就越小</span><span lang="EN-US" style="font-family:&quot;微软雅黑&quot;,sans-serif;mso-fareast-font-family:宋体"><o:p></o:p></span></p>

<h3 style="text-indent:24.0pt"><a name="_Toc416954728"><span lang="EN-US" style="background:white">3.4.4&nbsp; </span></a><span style="font-family:宋体;mso-ascii-font-family:
黑体;mso-fareast-font-family:宋体;mso-fareast-theme-font:minor-fareast;mso-hansi-font-family:
黑体;background:white">最短路径</span><span lang="EN-US" style="font-size:13.5pt;line-height:150%"><o:p></o:p></span></h3>

<p class="MsoNormal" style="text-indent:24.0pt"><span style="font-family:宋体;
mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:&quot;Times New Roman&quot;">通过词典匹配，我们找到了各节点（</span><span lang="EN-US">term</span><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;
mso-hansi-font-family:&quot;Times New Roman&quot;">）之间的距离后，需要求出从文章的开头到文章的结尾所以可能路径的长度最小值。其意义就在于这个最小值就是最接近真实文章含义的词组序列，及文章真正想表达的意义词组列。那么，如何快速的遍历出这个序列呢？这里就用到了之前讲解过的维特比算法。</span><span lang="EN-US" style="mso-bidi-font-size:12.0pt;line-height:150%"><o:p></o:p></span></p>

<p class="MsoNormal" style="text-indent:24.0pt"><span style="font-family:宋体;
mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:&quot;Times New Roman&quot;">在维特比算法中我们提到了它的精髓：</span><span lang="EN-US" style="font-size:10.5pt;line-height:150%;font-family:&quot;微软雅黑&quot;,sans-serif;
mso-fareast-font-family:宋体">&nbsp; &nbsp; &nbsp;</span><span lang="EN-US" style="font-family:&quot;微软雅黑&quot;,sans-serif;mso-fareast-font-family:宋体"><o:p></o:p></span></p>

<p class="MsoNormal" style="text-indent:24.0pt"><span style="font-family:宋体;
mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:&quot;Times New Roman&quot;;
mso-bidi-font-weight:bold">在得知第</span><span lang="EN-US">i</span><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;
mso-hansi-font-family:&quot;Times New Roman&quot;;mso-bidi-font-weight:bold">列所有节点（所有可能的词）</span><span lang="EN-US">X<sub>i</sub>{j=1,2,3,…}</span><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:
&quot;Times New Roman&quot;;mso-bidi-font-weight:bold">的最短路径（各个词的转换频率）。那么，从第</span><span lang="EN-US">i</span><span style="font-family:
宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:&quot;Times New Roman&quot;;
mso-bidi-font-weight:bold">列各节点到第</span><span lang="EN-US">i+1</span><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;
mso-hansi-font-family:&quot;Times New Roman&quot;;mso-bidi-font-weight:bold">列节点的最短路径就相当于到第</span><span lang="EN-US">i</span><span style="font-family:
宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:&quot;Times New Roman&quot;;
mso-bidi-font-weight:bold">列</span><span lang="EN-US">n</span><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;
mso-hansi-font-family:&quot;Times New Roman&quot;;mso-bidi-font-weight:bold">个节点的最短路径加上第</span><span lang="EN-US">i</span><span style="font-family:
宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:&quot;Times New Roman&quot;;
mso-bidi-font-weight:bold">列</span><span lang="EN-US">n</span><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;
mso-hansi-font-family:&quot;Times New Roman&quot;;mso-bidi-font-weight:bold">个节点到第</span><span lang="EN-US">i+1</span><span style="font-family:
宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:&quot;Times New Roman&quot;;
mso-bidi-font-weight:bold">列各个节点的距离的最小值，也就是最短路径法。</span><span lang="EN-US" style="font-family:&quot;微软雅黑&quot;,sans-serif;mso-fareast-font-family:宋体"><o:p></o:p></span></p>

<p class="MsoNormal" style="text-indent:24.0pt"><span class="apple-converted-space"><b><span lang="EN-US" style="font-family:&quot;Helvetica Neue&quot;,serif;
mso-fareast-font-family:微软雅黑;color:#333333">&nbsp;</span></b></span><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:
&quot;Times New Roman&quot;">在</span><span lang="EN-US">ansj</span><span style="font-family:
宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:&quot;Times New Roman&quot;">分词中，每个节点都会分配到一个</span><span lang="EN-US">score</span><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;
mso-hansi-font-family:&quot;Times New Roman&quot;">（这个参数在系统设计中是可提取的。），代表从根节点到当前节点的累计最短路径的长度，然后遍历整个图打分，每次打分加上</span><span lang="EN-US">from</span><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;
mso-hansi-font-family:&quot;Times New Roman&quot;">的距离和</span><span lang="EN-US">to</span><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:
&quot;Times New Roman&quot;">的距离。</span><span lang="EN-US"><o:p></o:p></span></p>

<p class="MsoNormal" style="text-indent:24.0pt"><span style="font-family:宋体;
mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:&quot;Times New Roman&quot;">在</span><span lang="EN-US">“</span><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;
mso-hansi-font-family:&quot;Times New Roman&quot;">商品和服务</span><span lang="EN-US">”</span><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:
&quot;Times New Roman&quot;">的词图可以表示为下图：</span><span lang="EN-US"><o:p></o:p></span></p>

<p align="center" style="margin-top:3.75pt;margin-right:0cm;margin-bottom:3.75pt;
margin-left:0cm;text-align:center;text-indent:24.0pt;background:white"><span lang="EN-US" style="font-family:&quot;Helvetica Neue&quot;,serif;mso-fareast-font-family:
微软雅黑;color:#333333;mso-no-proof:yes"><v:shape id="图片_x0020_30" o:spid="_x0000_i1035" type="#_x0000_t75" style="width:292.5pt;height:177pt;visibility:visible;
 mso-wrap-style:square">
 <img src="${base}/images/xtsm_files/31e19020-ffb1-47c6-9f7b-28fd5e175132.png" o:title="b2f48e4c-7003-47db-957e-3f95f5859332">
</v:shape></span><span lang="EN-US" style="font-family:&quot;Helvetica Neue&quot;,serif;
mso-fareast-font-family:微软雅黑;color:#333333"><o:p></o:p></span></p>

<p class="MsoNormal" style="text-indent:24.0pt"><span style="font-family:宋体;
mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:&quot;Times New Roman&quot;">从末尾节点开始观察，一共有两条路径到末尾，其中</span><span lang="EN-US">“</span><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;
mso-hansi-font-family:&quot;Times New Roman&quot;">服务</span><span lang="EN-US">-&gt;</span><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:
&quot;Times New Roman&quot;">结束</span><span lang="EN-US">”</span><span style="font-family:
宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:&quot;Times New Roman&quot;">那一条更短，那么</span><span lang="EN-US">“</span><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;
mso-hansi-font-family:&quot;Times New Roman&quot;">服务</span><span lang="EN-US">”</span><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:
&quot;Times New Roman&quot;">就是最佳分词中的倒数第一个词，如此类推，得出最佳分词路径为：</span><span lang="EN-US"><o:p></o:p></span></p>

<p class="MsoNormal" style="text-indent:21.0pt"><span lang="EN-US" style="font-size:10.5pt;line-height:150%;font-family:楷体">[</span><span style="font-size:10.5pt;line-height:150%;font-family:楷体">商品<span lang="EN-US">/n,
</span>和<span lang="EN-US">/c, </span>服务<span lang="EN-US">/vn]<o:p></o:p></span></span></p>

<p class="MsoNormal" style="text-indent:24.0pt"><span style="font-family:宋体;
mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:&quot;Times New Roman&quot;">我们可以发现，在</span><span lang="EN-US">“</span><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;
mso-hansi-font-family:&quot;Times New Roman&quot;">商品</span><span lang="EN-US">”</span><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:
&quot;Times New Roman&quot;">这个分岔点上，去</span><span lang="EN-US">“</span><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:
&quot;Times New Roman&quot;">和服</span><span lang="EN-US">”</span><span style="font-family:
宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:&quot;Times New Roman&quot;">与</span><span lang="EN-US">“</span><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;
mso-hansi-font-family:&quot;Times New Roman&quot;">和</span><span lang="EN-US">”</span><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:
&quot;Times New Roman&quot;">这两条路的远近就是一个典型，从</span><span lang="EN-US">“</span><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:
&quot;Times New Roman&quot;">商品</span><span lang="EN-US">”</span><span style="font-family:
宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:&quot;Times New Roman&quot;">转移到</span><span lang="EN-US">“</span><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;
mso-hansi-font-family:&quot;Times New Roman&quot;">商品和服</span><span lang="EN-US">”</span><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:
&quot;Times New Roman&quot;">的难度远远高于</span><span lang="EN-US">“</span><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:
&quot;Times New Roman&quot;">商品和</span><span lang="EN-US">”</span><span style="font-family:
宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:&quot;Times New Roman&quot;">的难度。</span><span lang="EN-US"><o:p></o:p></span></p>

<h3 style="text-indent:24.0pt"><a name="_Toc416954729"><span lang="EN-US">3.4.5&nbsp; </span></a><span style="font-family:宋体;mso-ascii-font-family:黑体;mso-fareast-font-family:宋体;
mso-fareast-theme-font:minor-fareast;mso-hansi-font-family:黑体">维特比算法的</span><span lang="EN-US">java</span><span style="font-family:宋体;mso-ascii-font-family:黑体;mso-fareast-font-family:宋体;
mso-fareast-theme-font:minor-fareast;mso-hansi-font-family:黑体">实</span><span class="3Char"><span style="font-family:
宋体;mso-ascii-font-family:黑体;mso-fareast-theme-font:minor-fareast;mso-hansi-font-family:
黑体;mso-bidi-font-weight:normal">现</span></span><span lang="EN-US"><o:p></o:p></span></h3>

<p class="MsoNormal" style="text-indent:24.0pt"><span lang="EN-US"><v:shape id="图片_x0020_35" o:spid="_x0000_i1034" type="#_x0000_t75" style="width:453.75pt;height:404.25pt;visibility:visible;
 mso-wrap-style:square">
 <img src="${base}/images/xtsm_files/82cd1e06-aa23-4ab4-ae68-7cef2e75b308.png" o:title="">
</v:shape></span><span lang="EN-US"><o:p></o:p></span></p>

<p class="MsoNormal" align="center" style="text-align:center;text-indent:24.0pt"><span style="font-family:黑体">维特比算法的<span lang="EN-US">java</span>实现<span lang="EN-US"><o:p></o:p></span></span></p>

<h2 style="text-indent:0cm"><a name="_Toc416954730"><span lang="EN-US">3.5&nbsp; HMM</span>在<span lang="EN-US">WKE</span>中的应用</a><span lang="EN-US"><o:p></o:p></span></h2>

<h3 style="text-indent:9.95pt;mso-char-indent-count:.83"><a name="_Toc416954731"><span lang="EN-US" style="font-family: 'Microsoft YaHei UI', sans-serif;">3.5.</span><span lang="EN-US">1&nbsp; </span></a><span style="font-family:宋体;mso-ascii-font-family:
黑体;mso-fareast-font-family:宋体;mso-fareast-theme-font:minor-fareast;mso-hansi-font-family:
黑体">词标来源</span><span lang="EN-US" style="font-family: 'Microsoft YaHei UI', sans-serif;"><o:p></o:p></span></h3>

<p class="MsoNormal" style="text-indent:24.0pt"><span lang="EN-US" style="background:white">RKES</span><span style="font-family:宋体;mso-ascii-font-family:
&quot;Times New Roman&quot;;mso-hansi-font-family:&quot;Times New Roman&quot;;background:white">项目中使用的</span><span lang="EN-US" style="background:white">Ansj</span><span style="font-family:宋体;
mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:&quot;Times New Roman&quot;;
background:white">词标词典</span><span lang="EN-US" style="background:white">arrays.dic</span><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:
&quot;Times New Roman&quot;;background:white">是从结巴分词移植而来，而结巴的词典根据</span><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:
&quot;Times New Roman&quot;">中文标注语料库</span><span lang="EN-US" style="background:white">+ictclas</span><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:
&quot;Times New Roman&quot;;background:white">切割小说统计出来的。</span><span lang="EN-US" style="font-size: 13.5pt; line-height: 150%; font-family: 微软雅黑, sans-serif;"><o:p></o:p></span></p>

<h3 style="text-indent:9.95pt;mso-char-indent-count:.83"><a name="_Toc416954732"><span lang="EN-US">3.5.2&nbsp; </span></a><span style="font-family:宋体;mso-ascii-font-family:
黑体;mso-fareast-font-family:宋体;mso-fareast-theme-font:minor-fareast;mso-hansi-font-family:
黑体">算法</span><span lang="EN-US" style="font-family: 'Microsoft YaHei UI', sans-serif;"><o:p></o:p></span></h3>

<p class="MsoNormal" style="text-indent:24.0pt"><span style="font-family:宋体;
mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:&quot;Times New Roman&quot;">词性标注的逻辑其实和分词的逻辑是一样的，都是使用维特比算法来快速遍历以解决词性标注。</span><span lang="EN-US"><o:p></o:p></span></p>

<h3 style="text-indent:9.95pt;mso-char-indent-count:.83"><a name="_Toc416954733"><span lang="EN-US">3.5.3&nbsp; WKE</span></a><span style="font-family:宋体;mso-ascii-font-family:
黑体;mso-fareast-font-family:宋体;mso-fareast-theme-font:minor-fareast;mso-hansi-font-family:
黑体">的应用</span><span lang="EN-US"><o:p></o:p></span></h3>

<p class="MsoNormal" style="text-indent:24.0pt"><span lang="EN-US">&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;</span><span style="font-family: 宋体;">在</span><span lang="EN-US">RKES</span><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:
&quot;Times New Roman&quot;">项目中，可以将隐性（好比之前例子中的骰子）值当成</span><span lang="EN-US">“</span><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:
&quot;Times New Roman&quot;">词性</span><span lang="EN-US">”</span><span style="font-family:
宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:&quot;Times New Roman&quot;">，显性（好比骰子得到的数字）值当成</span><span lang="EN-US">“</span><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;
mso-hansi-font-family:&quot;Times New Roman&quot;">字或词</span><span lang="EN-US">”</span><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:
&quot;Times New Roman&quot;">。则，</span><span lang="EN-US">WKE</span><span style="font-family:
宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:&quot;Times New Roman&quot;">的问题就可以转化为：</span><span lang="EN-US">&nbsp; &nbsp;&nbsp;</span><span lang="EN-US" style="font-family: 'Microsoft YaHei UI', sans-serif;"><o:p></o:p></span></p>

<p class="MsoNormal" style="text-indent:24.0pt"><span lang="EN-US">&nbsp; &nbsp;&nbsp;&nbsp; &nbsp; </span><span style="font-family: 宋体;">我们通过分词算法得到了一个词语串（注意是词串，不是字串）。这个过程就好比在掷骰子的例子中我们掷骰</span><span lang="EN-US">10</span><span style="font-family: 宋体;">次所得到的数字列。然后我们的词性字典就相当于给定的概率（一个词性对应到一个词的可能性），好比每个骰子得到各数字的概率。最后就需要利用</span><span lang="EN-US">HMM</span><span style="font-family: 宋体;">计算出这个词性串是什么了。</span><span lang="EN-US" style="font-family: 'Microsoft YaHei UI', sans-serif;"><o:p></o:p></span></p>

<h2><a name="_Toc416954734"><span lang="EN-US">3.6&nbsp; </span>关键词</a><span lang="EN-US"><o:p></o:p></span></h2>

<p class="MsoNormal" style="text-indent:24.0pt"><span style="font-family:宋体;
mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:&quot;Times New Roman&quot;">在之前我们做好了一系列准备工作以后，我们得到了以下两组数据：文章原文、分词后的该文章的词序列（带词性、词频）。现在要做到就是本系统最核心的内容——关键词抽取。</span><span lang="EN-US"><o:p></o:p></span></p>

<h3 style="text-indent:24.0pt"><a name="_Toc416954735"><span lang="EN-US">3.6.1&nbsp; </span></a><span style="font-family:宋体;mso-ascii-font-family:黑体;mso-fareast-font-family:宋体;
mso-fareast-theme-font:minor-fareast;mso-hansi-font-family:黑体">关键词抽取的要素</span><span lang="EN-US" style="mso-bidi-font-size:
12.0pt;line-height:150%;font-family:宋体;mso-fareast-font-family:宋体;mso-fareast-theme-font:
minor-fareast"><o:p></o:p></span></h3>

<p class="MsoNormal" style="text-indent:24.0pt"><span style="font-family:宋体;
mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:&quot;Times New Roman&quot;">在做关键词抽取之前，我们需要了解评判关键词的要素有哪些。</span><span lang="EN-US"><o:p></o:p></span></p>

<p class="MsoNormal" align="left" style="text-indent: 0cm; line-height: 15.75pt;"><span lang="EN-US"><v:shape id="图片_x0020_56" o:spid="_x0000_i1033" type="#_x0000_t75" style="width:450.75pt;height:46.5pt;visibility:visible;
 mso-wrap-style:square">
 <img src="${base}/images/xtsm_files/2811e97d-68de-4dcb-bd1a-0acd8b17e9f9.png" o:title="">
</v:shape></span><span lang="EN-US" style="font-size: 10.5pt; font-family: 'Microsoft YaHei UI', sans-serif;"><o:p></o:p></span></p>

<p class="MsoNormal" style="text-indent:24.0pt"><span style="font-family:宋体;
mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:&quot;Times New Roman&quot;">由此看来，关键词其实就是文本序列的标志性词汇。用通俗的语言讲就是对文章内容的提炼，而这种提炼可以作为索引对全文进行查询。这在信息检索领域具有非常积极的作用。当然对于我们的日常生活来讲，就是快速了解一篇文章的大意的捷径。而真正能够发挥起最大优势的地方就是在互联网金融领域，以及社会金融领域。这些领域的各个行业需要获取大量与之相关的信息（不单单指文本信息）。从中找到极其重要的关键词进行分析，分析的结果将引用到决策战略上去，这对行情和事态的把握以及为止做出的战略计划的制定是意义重大的。</span><span lang="EN-US" style="font-size:10.5pt;line-height:150%;font-family:&quot;Microsoft YaHei UI&quot;,sans-serif"><o:p></o:p></span></p>

<p class="MsoNormal" style="text-indent:24.0pt"><span style="font-family:宋体;
mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:&quot;Times New Roman&quot;">回到我们的问题中来，既然关键词具有这么大的魅力，那么怎么得到呢？</span><span lang="EN-US" style="font-size:10.5pt;line-height:150%;font-family:&quot;Microsoft YaHei UI&quot;,sans-serif"><o:p></o:p></span></p>

<p class="MsoNormal" style="text-indent:24.0pt"><span style="font-family:宋体;
mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:&quot;Times New Roman&quot;">根据语言学角度的分析，当我们说出一句话的时候，人类大脑分析这句话的含义时会潜意识抽取其中的典型词语来评判。</span><span lang="EN-US"><o:p></o:p></span></p>

<p class="MsoNormal" style="text-indent:24.0pt"><span style="font-family:宋体;
mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:&quot;Times New Roman&quot;">举例：</span><span lang="EN-US"><o:p></o:p></span></p>

<p class="MsoNormal" style="text-indent:21.0pt"><span style="font-size:10.5pt;
line-height:150%;font-family:楷体">这是一个漂亮的妹子。<span lang="EN-US"><o:p></o:p></span></span></p>

<p class="MsoNormal" style="text-indent:24.0pt"><span style="font-family:宋体;
mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:&quot;Times New Roman&quot;">我们大脑在获取这条信息后瞬间得到的影响，也就是从中抽取其中的关键词是：漂亮、妹子。我们会发现，“这是”，“</span><span lang="EN-US" style="mso-bidi-font-size:12.0pt;line-height:150%">&nbsp;</span><span style="mso-bidi-font-size:12.0pt;line-height:150%;font-family:宋体;mso-ascii-font-family:
&quot;Times New Roman&quot;;mso-hansi-font-family:&quot;Times New Roman&quot;">一个”和“的”这三个词会被忽略了，大脑基本不会对其做出刺激反应。而做出这种反应的原因是，我们在生活与人交流或者读写听的时候，通过训练并潜意识懂得那些词重要那些词不重要了。</span><span lang="EN-US" style="mso-bidi-font-size:12.0pt;line-height:150%"><o:p></o:p></span></p>

<p class="MsoNormal" style="text-indent:24.0pt"><span style="mso-bidi-font-size:
12.0pt;line-height:150%;font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;
mso-hansi-font-family:&quot;Times New Roman&quot;">有分析表明，这些关键的词的词性无外乎就是：名词</span><span lang="EN-US" style="mso-bidi-font-size:12.0pt;line-height:150%">n</span><span style="mso-bidi-font-size:12.0pt;line-height:150%;font-family:宋体;mso-ascii-font-family:
&quot;Times New Roman&quot;;mso-hansi-font-family:&quot;Times New Roman&quot;">、</span><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:
&quot;Times New Roman&quot;">动词</span><span lang="EN-US">v</span><span style="font-family:
宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:&quot;Times New Roman&quot;">、代词</span><span lang="EN-US">r</span><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;
mso-hansi-font-family:&quot;Times New Roman&quot;">、形容词</span><span lang="EN-US">a</span><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:
&quot;Times New Roman&quot;">、量词</span><span lang="EN-US">q</span><span style="font-family:
宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:&quot;Times New Roman&quot;">、时间词</span><span lang="EN-US">t</span><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;
mso-hansi-font-family:&quot;Times New Roman&quot;">。而不重要的词性包括：处所词</span><span lang="EN-US">s</span><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:
&quot;Times New Roman&quot;">、方位词</span><span lang="EN-US">f</span><span style="font-family:
宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:&quot;Times New Roman&quot;">、副词</span><span lang="EN-US">d</span><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;
mso-hansi-font-family:&quot;Times New Roman&quot;">、区别词</span><span lang="EN-US">b</span><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:
&quot;Times New Roman&quot;">、状态词</span><span lang="EN-US">z</span><span style="font-family:
宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:&quot;Times New Roman&quot;">、介词</span><span lang="EN-US">p</span><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;
mso-hansi-font-family:&quot;Times New Roman&quot;">、连词</span><span lang="EN-US">c</span><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:
&quot;Times New Roman&quot;">、助词</span><span lang="EN-US">u</span><span style="font-family:
宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:&quot;Times New Roman&quot;">、叹词</span><span lang="EN-US">e</span><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;
mso-hansi-font-family:&quot;Times New Roman&quot;">、语气词</span><span lang="EN-US">y</span><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:
&quot;Times New Roman&quot;">、拟声词</span><span lang="EN-US">o</span><span style="font-family:
宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:&quot;Times New Roman&quot;">、标点符号</span><span lang="EN-US">w</span><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;
mso-hansi-font-family:&quot;Times New Roman&quot;">。</span><span lang="EN-US" style="font-size:10.5pt;line-height:150%;font-family:&quot;Microsoft YaHei UI&quot;,sans-serif"><o:p></o:p></span></p>

<p class="MsoNormal" style="text-indent:24.0pt"><span style="font-family:宋体;
mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:&quot;Times New Roman&quot;">现在，我们的思路就很清晰了，既然我门已经得到了这些词还有词性、词频，我们只需要给它们加上权重对每一个词进行统计打分，基本就可以获得我们想要的结果了。于是，关键词抽取迎刃而解！</span><span lang="EN-US"><o:p></o:p></span></p>

<h3 style="margin-left:72.0pt;text-indent:-42.0pt;mso-char-indent-count:0;
mso-list:l12 level3 lfo13"><span lang="EN-US">3.6.2<span style="font-weight: normal; font-size: 7pt; line-height: normal; font-family: 'Times New Roman';">&nbsp;&nbsp;&nbsp;
</span></span><span lang="EN-US">&nbsp;</span><a name="_Toc416954736"><span style="font-family:宋体;mso-ascii-font-family:黑体;mso-fareast-font-family:宋体;
mso-fareast-theme-font:minor-fareast;mso-hansi-font-family:黑体">算法</span></a><span lang="EN-US"><o:p></o:p></span></h3>

<p class="MsoNormal" style="text-indent:24.0pt"><span lang="EN-US">1.</span><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:
&quot;Times New Roman&quot;">分配权重参数：</span><span lang="EN-US"><o:p></o:p></span></p>

<p class="MsoNormal" style="text-indent:24.0pt"><span style="font-family:宋体;
mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:&quot;Times New Roman&quot;">我们给予词性为</span><span lang="EN-US">n</span><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;
mso-hansi-font-family:&quot;Times New Roman&quot;">、</span><span lang="EN-US">v</span><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:
&quot;Times New Roman&quot;">、</span><span lang="EN-US">a</span><span style="font-family:
宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:&quot;Times New Roman&quot;">的词语不同级别的权重增量，而对词性为</span><span lang="EN-US">s</span><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;
mso-hansi-font-family:&quot;Times New Roman&quot;">、</span><span lang="EN-US">f</span><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:
&quot;Times New Roman&quot;">、</span><span lang="EN-US">d</span><span style="font-family:
宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:&quot;Times New Roman&quot;">、</span><span lang="EN-US">b</span><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;
mso-hansi-font-family:&quot;Times New Roman&quot;">、</span><span lang="EN-US">z</span><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:
&quot;Times New Roman&quot;">、</span><span lang="EN-US">p</span><span style="font-family:
宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:&quot;Times New Roman&quot;">、</span><span lang="EN-US">c</span><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;
mso-hansi-font-family:&quot;Times New Roman&quot;">、</span><span lang="EN-US">u</span><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:
&quot;Times New Roman&quot;">、</span><span lang="EN-US">e</span><span style="font-family:
宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:&quot;Times New Roman&quot;">、</span><span lang="EN-US">y</span><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;
mso-hansi-font-family:&quot;Times New Roman&quot;">、</span><span lang="EN-US">o</span><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:
&quot;Times New Roman&quot;">、</span><span lang="EN-US">w</span><span style="font-family:
宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:&quot;Times New Roman&quot;">的词或者字符等给予了权重减量。</span><span lang="EN-US"><o:p></o:p></span></p>

<p class="MsoNormal" style="text-indent:24.0pt"><span style="font-family:宋体;
mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:&quot;Times New Roman&quot;">代码实现：</span><span lang="EN-US"><o:p></o:p></span></p>

<p class="MsoNormal" align="center" style="text-align:center;text-indent:24.0pt"><span lang="EN-US"><v:shape id="图片_x0020_32" o:spid="_x0000_i1032" type="#_x0000_t75" style="width:180.75pt;height:266.25pt;visibility:visible;
 mso-wrap-style:square">
 <img src="${base}/images/xtsm_files/58d7b181-4ed1-47ed-be0b-8891fb575d6c.png" o:title="">
</v:shape></span><span lang="EN-US"><o:p></o:p></span></p>

<p class="MsoNormal" align="center" style="text-align:center;text-indent:24.0pt"><span style="font-family:黑体">词性权限设定<span lang="EN-US"><o:p></o:p></span></span></p>

<p class="MsoNormal" style="text-indent:24.0pt"><span lang="EN-US">2.</span><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:
&quot;Times New Roman&quot;">标题权重：</span><span lang="EN-US"><o:p></o:p></span></p>

<p class="MsoNormal" style="text-indent:24.0pt"><span style="font-family:宋体;
mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:&quot;Times New Roman&quot;">新闻类文本分析有一个重要元素就是标题（</span><span lang="EN-US">title</span><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;
mso-hansi-font-family:&quot;Times New Roman&quot;">），众所周知，标题其实就是对文章内容的一个概括，所以我在标题中出现的词也做了分词处理，并给予了更高的权重增量以此来体现这类在标题中出现的词的重要性。</span><span lang="EN-US"><o:p></o:p></span></p>

<p class="MsoNormal" style="text-indent:24.0pt"><span style="font-family:宋体;
mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:&quot;Times New Roman&quot;">代码实现：</span><span lang="EN-US"><o:p></o:p></span></p>

<p class="MsoNormal" align="center" style="text-align:center;text-indent:24.0pt"><span lang="EN-US"><v:shape id="图片_x0020_33" o:spid="_x0000_i1031" type="#_x0000_t75" style="width:403.5pt;height:271.5pt;visibility:visible;
 mso-wrap-style:square">
 <img src="${base}/images/xtsm_files/793556eb-9f60-4009-b050-1a96b3c35823.png" o:title="">
</v:shape></span><span lang="EN-US"><o:p></o:p></span></p>

<p class="MsoNormal" align="center" style="text-align:center;text-indent:24.0pt"><span style="font-family:黑体">标题权重代码<span lang="EN-US"><o:p></o:p></span></span></p>

<p class="MsoNormal" style="text-indent:24.0pt"><span lang="EN-US">3</span><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:
&quot;Times New Roman&quot;">．全文本打分：</span><span lang="EN-US"><o:p></o:p></span></p>

<p class="MsoNormal" style="text-indent:24.0pt"><span style="font-family:宋体;
mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:&quot;Times New Roman&quot;">这一步就是最依照之前做的权重进行全分词打分并依照分数高低排列输出的过程。</span><span lang="EN-US"><o:p></o:p></span></p>

<p class="MsoNormal" style="text-indent:24.0pt"><span style="font-family:宋体;
mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:&quot;Times New Roman&quot;">代码实现：</span><span lang="EN-US"><o:p></o:p></span></p>

<p class="MsoNormal" align="center" style="text-align:center;text-indent:24.0pt"><span lang="EN-US"><v:shape id="图片_x0020_34" o:spid="_x0000_i1030" type="#_x0000_t75" style="width:302.25pt;height:213pt;visibility:visible;
 mso-wrap-style:square">
 <img src="${base}/images/xtsm_files/9fc13991-bf0f-4240-8278-d291e7388533.png" o:title="">
</v:shape></span><span lang="EN-US"><o:p></o:p></span></p>

<p class="MsoNormal" align="center" style="text-align:center;text-indent:24.0pt"><span style="font-family:黑体">全文本打分<span lang="EN-US"><o:p></o:p></span></span></p>

<h1 align="center" style="text-align:center;text-indent:32.0pt"><a name="_Toc416954737"><span style="font-size:16.0pt;line-height:150%;font-weight:
normal">第<span lang="EN-US">4</span>章<span lang="EN-US">&nbsp; Web</span>爬虫模块</span></a><span lang="EN-US" style="font-size:16.0pt;line-height:150%;font-weight:normal"><o:p></o:p></span></h1>

<h2><a name="_Toc416954738"><span lang="EN-US">4.1&nbsp; CWM</span>系统简介</a><span lang="EN-US"><o:p></o:p></span></h2>

<p class="MsoNormal" style="text-indent:24.0pt"><span lang="EN-US">RKES</span><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:
&quot;Times New Roman&quot;">项目中的网络爬虫（</span><span lang="EN-US">CWM</span><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:
&quot;Times New Roman&quot;">）模块是一个辅助模块，便于快速获取大量信息原始数据。这些数据的数据源来自于新浪新闻网（</span><span lang="EN-US">news.sina.com.cn</span><span style="font-family:宋体;mso-ascii-font-family:
&quot;Times New Roman&quot;;mso-hansi-font-family:&quot;Times New Roman&quot;">）等类似的新闻站点。</span><span lang="EN-US"><o:p></o:p></span></p>

<p class="MsoNormal" style="text-indent:24.0pt"><span style="font-family:宋体;
mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:&quot;Times New Roman&quot;">根据以前在实习工作的经验和项目实施的过程中发现，直接从这些网站的域名（</span><span lang="EN-US">domain name</span><span style="font-family:宋体;mso-ascii-font-family:
&quot;Times New Roman&quot;;mso-hansi-font-family:&quot;Times New Roman&quot;">）地址进入会因为加载大量的无用元素（</span><span lang="EN-US">CSS</span><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;
mso-hansi-font-family:&quot;Times New Roman&quot;">、</span><span lang="EN-US">JS</span><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:
&quot;Times New Roman&quot;">、</span><span lang="EN-US">JSP</span><span style="font-family:
宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:&quot;Times New Roman&quot;">、</span><span lang="EN-US">IMAGES</span><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;
mso-hansi-font-family:&quot;Times New Roman&quot;">、</span><span lang="EN-US">VIDEO</span><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:
&quot;Times New Roman&quot;">等等）导致获取网页原代码速率非常慢（这里网速和网关也是一个重要的影响因素），同时由于现在的网站使用不同的模板页，内部的</span><span lang="EN-US">HTML</span><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;
mso-hansi-font-family:&quot;Times New Roman&quot;">代码存在差异给遍历规则的编写带来了麻烦。所以我改变了希望获取的关口，尝试从</span><span lang="EN-US">RSS</span><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;
mso-hansi-font-family:&quot;Times New Roman&quot;">（例：</span><span lang="EN-US">rss.sina.com.cn/news</span><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:
&quot;Times New Roman&quot;">）入口进行查询。这样的好处在于，这种</span><span lang="EN-US">RSS</span><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:
&quot;Times New Roman&quot;">页面多已存于</span><span lang="EN-US">XML</span><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:
&quot;Times New Roman&quot;">编写，格式比较整齐，遍历得到的数据比较干净完整。</span><span lang="EN-US" style="mso-bidi-font-size:12.0pt;line-height:150%;font-family:宋体"><o:p></o:p></span></p>

<h2><a name="_Toc416954739"><span lang="EN-US">4.2&nbsp; CWM</span>的原理</a><span lang="EN-US"><o:p></o:p></span></h2>

<p class="MsoNormal" style="text-indent:24.0pt"><span lang="EN-US">CWM</span><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:
&quot;Times New Roman&quot;">是一个较为简易的爬虫</span><span lang="EN-US">Java</span><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:
&quot;Times New Roman&quot;">程序，它实现了二阶深度的文本遍历：</span><span lang="EN-US"><o:p></o:p></span></p>

<p class="MsoNormal" style="text-indent:24.0pt"><span lang="EN-US">1.</span><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:
&quot;Times New Roman&quot;">从入口</span><span lang="EN-US">URL</span><span style="font-family:
宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:&quot;Times New Roman&quot;">进入目标站点，向目标站点发出请求（</span><span lang="EN-US">HttpWebReques</span><span style="font-family:宋体;mso-ascii-font-family:
&quot;Times New Roman&quot;;mso-hansi-font-family:&quot;Times New Roman&quot;">类）并得到回执。这个回执是一个存储在内存当中的</span><span lang="EN-US">string</span><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;
mso-hansi-font-family:&quot;Times New Roman&quot;">类型，其内容是</span><span lang="EN-US">HTML</span><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:
&quot;Times New Roman&quot;">源码。再利用之前设置好的</span><span lang="EN-US">URL</span><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:
&quot;Times New Roman&quot;">正则表达式遍历出进入新闻网址的</span><span lang="EN-US">URL</span><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:
&quot;Times New Roman&quot;">字符串，即获取的任务列表写入数据库的</span><span lang="EN-US">t_pt_urllist</span><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:
&quot;Times New Roman&quot;">表里；</span><span lang="EN-US"><o:p></o:p></span></p>

<p class="MsoNormal" style="text-indent:24.0pt"><span lang="EN-US">2</span><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:
&quot;Times New Roman&quot;">从</span><span lang="EN-US">t_pt_urllist</span><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:
&quot;Times New Roman&quot;">表中的任务列表再次遍历获取新闻内容，这个过程与上一步的原理是一样的，都是通过正则表达式来遍历需要的内容。在获取完成后系统会调用</span><span lang="EN-US">WKE</span><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;
mso-hansi-font-family:&quot;Times New Roman&quot;">模块进行关键词抽取。最后把得到的文章标题、正文、关键词存入</span><span lang="EN-US">t_pt_news</span><span style="font-family:宋体;mso-ascii-font-family:
&quot;Times New Roman&quot;;mso-hansi-font-family:&quot;Times New Roman&quot;">表中。</span><span lang="EN-US"><o:p></o:p></span></p>

<h2 style="margin-left:54.0pt;text-indent:-30.0pt;mso-list:l16 level2 lfo16"><a name="_Toc416954740"><span lang="EN-US">1.3<span style="font-weight: normal; font-size: 7pt; line-height: normal; font-family: 'Times New Roman';">&nbsp;&nbsp;&nbsp;
</span></span><span lang="EN-US">CWM</span>的<span lang="EN-US">java</span>实现</a><span lang="EN-US"><o:p></o:p></span></h2>

<p class="MsoNormal" style="text-indent:24.0pt"><span lang="EN-US"><o:p>&nbsp;</o:p></span></p>

<p class="MsoNormal" align="center" style="text-align:center;text-indent:24.0pt"><span lang="EN-US"><v:shape id="图片_x0020_36" o:spid="_x0000_i1029" type="#_x0000_t75" style="width:376.5pt;height:461.25pt;visibility:visible;
 mso-wrap-style:square">
 <img src="${base}/images/xtsm_files/7704c445-10ef-42e4-9f25-82c81b7c2072.png" o:title="">
</v:shape></span><span lang="EN-US"><o:p></o:p></span></p>

<p class="MsoNormal" align="center" style="text-align:center;text-indent:24.0pt"><span lang="EN-US" style="font-family:黑体">CWM</span><span style="font-family:黑体">核心代码<span lang="EN-US"><o:p></o:p></span></span></p>

<p class="MsoNormal" style="text-indent:24.0pt"><span style="font-family:宋体;
mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:&quot;Times New Roman&quot;">这一段代码是对新闻的处理。由于网络爬虫对网速的要求较高，在网上慢或者网关等问题有时会响应超时，这里的处理方法是使用</span><span lang="EN-US">SLEEP</span><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;
mso-hansi-font-family:&quot;Times New Roman&quot;">函数暂停</span><span lang="EN-US">3</span><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:
&quot;Times New Roman&quot;">秒，如果依然无法获取则进行</span><span lang="EN-US">skipurl</span><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:
&quot;Times New Roman&quot;">操作，意思是将该任务标注为未完成状态后续处理。所以整个系统来讲是持续执行的。</span><span lang="EN-US"><o:p></o:p></span></p>

<p class="MsoNormal" style="text-indent:24.0pt"><span style="font-family:宋体;
mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:&quot;Times New Roman&quot;">执行效果：</span><span lang="EN-US"><o:p></o:p></span></p>

<p class="MsoNormal" align="center" style="text-indent:24.0pt"><span lang="EN-US"><v:shape id="图片_x0020_49" o:spid="_x0000_i1028" type="#_x0000_t75" style="width:397.5pt;height:372.75pt;visibility:visible;
 mso-wrap-style:square">
 <img src="${base}/images/xtsm_files/454d9174-c486-4353-8f9f-fc1e863b2068.png" o:title="">
</v:shape></span><span lang="EN-US"><o:p></o:p></span></p>

<p class="MsoNormal" align="center" style="text-align:center;text-indent:24.0pt"><span style="font-family:黑体">控制台输出信息<span lang="EN-US"><o:p></o:p></span></span></p>

<p class="MsoNormal" align="center" style="text-align:center;text-indent:24.0pt"><span lang="EN-US"><v:shape id="图片_x0020_51" o:spid="_x0000_i1027" type="#_x0000_t75" style="width:453pt;height:252pt;visibility:visible;
 mso-wrap-style:square">
 <img src="${base}/images/xtsm_files/06537472-42ff-4737-aa90-16bfd4dcc522.png" o:title="">
</v:shape></span><span lang="EN-US" style="font-family:黑体"><o:p></o:p></span></p>

<p class="MsoNormal" align="center" style="text-align:center;text-indent:24.0pt"><span style="font-family:黑体">数据库<span lang="EN-US">t_pt_news</span>表数据<span lang="EN-US"><o:p></o:p></span></span></p>

<h1 align="center" style="text-align:center;text-indent:32.0pt"><a name="_Toc416954741"><span style="font-size:16.0pt;line-height:150%;font-weight:
normal">第<span lang="EN-US">5</span>章<span lang="EN-US">&nbsp; </span>系统评估</span></a><span lang="EN-US" style="font-size:16.0pt;line-height:150%;font-weight:normal"><o:p></o:p></span></h1>

<h2><a name="_Toc416954742"><span lang="EN-US">5.1&nbsp; WKE</span>评估</a><span lang="EN-US"><o:p></o:p></span></h2>

<p class="MsoNormal" style="text-indent:24.0pt"><span style="font-family:宋体;
mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:&quot;Times New Roman&quot;">关键词抽取的评估有以下几个评估指标：</span><span lang="EN-US"><o:p></o:p></span></p>

<p class="MsoListParagraph" style="margin-left:42.0pt;text-indent:-18.0pt;
mso-char-indent-count:0;mso-list:l6 level1 lfo17"><span lang="EN-US">1．</span><span style="font-family:
宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:&quot;Times New Roman&quot;">歧义词区分能力；</span><span lang="EN-US"><o:p></o:p></span></p>

<p class="MsoListParagraph" style="margin-left:42.0pt;text-indent:-18.0pt;
mso-char-indent-count:0;mso-list:l6 level1 lfo17"><span lang="EN-US">2．</span><span style="font-family:
宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:&quot;Times New Roman&quot;">关键词代表性；</span><span lang="EN-US"><o:p></o:p></span></p>

<p class="MsoListParagraph" style="margin-left:42.0pt;text-indent:-18.0pt;
mso-char-indent-count:0;mso-list:l6 level1 lfo17"><span lang="EN-US">3．</span><span style="font-family:
宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:&quot;Times New Roman&quot;">分词性能；</span><span lang="EN-US"><o:p></o:p></span></p>

<h3 style="text-indent:24.0pt"><a name="_Toc416954743"><span lang="EN-US">5.1.1&nbsp; </span></a><span style="font-family:宋体;mso-ascii-font-family:黑体;mso-fareast-font-family:宋体;
mso-fareast-theme-font:minor-fareast;mso-hansi-font-family:黑体">歧义词区分评估</span><span lang="EN-US"><o:p></o:p></span></h3>

<p class="MsoNormal" style="text-indent:24.0pt"><span style="font-family:宋体;
mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:&quot;Times New Roman&quot;">测试例句：（依照</span><span lang="EN-US">NLP</span><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;
mso-hansi-font-family:&quot;Times New Roman&quot;">分词标准）</span><span lang="EN-US"><o:p></o:p></span></p>

<table class="MsoTableGrid" border="1" cellspacing="0" cellpadding="0" style="border: none;">
 <tbody><tr>
  <td width="56" valign="top" style="width: 42.3pt; border-color: windowtext; border-width: 1pt; padding: 0cm 5.4pt;">
  <h3 style="text-indent:0cm;mso-char-indent-count:0"><a name="_Toc416954744"><span style="font-family:宋体;mso-ascii-font-family:黑体;mso-fareast-font-family:宋体;
  mso-fareast-theme-font:minor-fareast;mso-hansi-font-family:黑体">编号</span></a><span lang="EN-US"><o:p></o:p></span></h3>
  </td>
  <td width="227" valign="top" style="width: 6cm; border-top-color: windowtext; border-right-color: windowtext; border-bottom-color: windowtext; border-top-width: 1pt; border-right-width: 1pt; border-bottom-width: 1pt; border-left-style: none; padding: 0cm 5.4pt;">
  <h3 style="text-indent:0cm;mso-char-indent-count:0"><a name="_Toc416954745"><span style="font-family:宋体;mso-ascii-font-family:黑体;mso-fareast-font-family:宋体;
  mso-fareast-theme-font:minor-fareast;mso-hansi-font-family:黑体">例句</span></a><span lang="EN-US"><o:p></o:p></span></h3>
  </td>
  <td width="261" valign="top" style="width: 195.55pt; border-top-color: windowtext; border-right-color: windowtext; border-bottom-color: windowtext; border-top-width: 1pt; border-right-width: 1pt; border-bottom-width: 1pt; border-left-style: none; padding: 0cm 5.4pt;">
  <h3 style="text-indent:0cm;mso-char-indent-count:0"><a name="_Toc416954746"><span style="font-family:宋体;mso-ascii-font-family:黑体;mso-fareast-font-family:宋体;
  mso-fareast-theme-font:minor-fareast;mso-hansi-font-family:黑体">分词</span></a><span lang="EN-US"><o:p></o:p></span></h3>
  </td>
  <td width="60" valign="top" style="width: 45.05pt; border-top-color: windowtext; border-right-color: windowtext; border-bottom-color: windowtext; border-top-width: 1pt; border-right-width: 1pt; border-bottom-width: 1pt; border-left-style: none; padding: 0cm 5.4pt;">
  <h3 style="text-indent:0cm;mso-char-indent-count:0"><a name="_Toc416954747"><span style="font-family:宋体;mso-ascii-font-family:黑体;mso-fareast-font-family:宋体;
  mso-fareast-theme-font:minor-fareast;mso-hansi-font-family:黑体">评估</span></a><span lang="EN-US"><o:p></o:p></span></h3>
  </td>
 </tr>
 <tr>
  <td width="56" valign="top" style="width: 42.3pt; border-right-color: windowtext; border-bottom-color: windowtext; border-left-color: windowtext; border-right-width: 1pt; border-bottom-width: 1pt; border-left-width: 1pt; border-top-style: none; padding: 0cm 5.4pt;">
  <h3 style="text-indent:0cm;mso-char-indent-count:0"><a name="_Toc416954748"><span lang="EN-US">1</span></a><span lang="EN-US"><o:p></o:p></span></h3>
  </td>
  <td width="227" valign="top" style="width: 6cm; border-top-style: none; border-left-style: none; border-bottom-color: windowtext; border-bottom-width: 1pt; border-right-color: windowtext; border-right-width: 1pt; padding: 0cm 5.4pt;">
  <h3 style="text-indent:0cm;mso-char-indent-count:0"><a name="_Toc416954749"><span style="font-family:宋体;mso-ascii-font-family:黑体;mso-fareast-font-family:宋体;
  mso-fareast-theme-font:minor-fareast;mso-hansi-font-family:黑体">我不喜欢日本和服。</span></a><span lang="EN-US"><o:p></o:p></span></h3>
  </td>
  <td width="261" valign="top" style="width: 195.55pt; border-top-style: none; border-left-style: none; border-bottom-color: windowtext; border-bottom-width: 1pt; border-right-color: windowtext; border-right-width: 1pt; padding: 0cm 5.4pt;">
  <h3 style="text-indent:0cm;mso-char-indent-count:0"><a name="_Toc416954750"><span style="font-family:宋体;mso-ascii-font-family:黑体;mso-fareast-font-family:宋体;
  mso-fareast-theme-font:minor-fareast;mso-hansi-font-family:黑体">我</span><span lang="EN-US">/</span></a><span style="font-family:宋体;mso-ascii-font-family:黑体;mso-fareast-font-family:宋体;
  mso-fareast-theme-font:minor-fareast;mso-hansi-font-family:黑体">不</span><span lang="EN-US">/</span><span style="font-family:宋体;mso-ascii-font-family:黑体;mso-fareast-font-family:宋体;
  mso-fareast-theme-font:minor-fareast;mso-hansi-font-family:黑体">喜欢</span><span lang="EN-US">/</span><span style="font-family:宋体;mso-ascii-font-family:黑体;mso-fareast-font-family:宋体;
  mso-fareast-theme-font:minor-fareast;mso-hansi-font-family:黑体">日本</span><span lang="EN-US">/</span><span style="font-family:宋体;mso-ascii-font-family:黑体;mso-fareast-font-family:宋体;
  mso-fareast-theme-font:minor-fareast;mso-hansi-font-family:黑体">和服。</span><span lang="EN-US"><o:p></o:p></span></h3>
  </td>
  <td width="60" valign="top" style="width: 45.05pt; border-top-style: none; border-left-style: none; border-bottom-color: windowtext; border-bottom-width: 1pt; border-right-color: windowtext; border-right-width: 1pt; padding: 0cm 5.4pt;">
  <h3 style="text-indent:0cm;mso-char-indent-count:0"><a name="_Toc416954751"><span style="font-family:宋体;mso-ascii-font-family:黑体;mso-fareast-font-family:宋体;
  mso-fareast-theme-font:minor-fareast;mso-hansi-font-family:黑体">正确</span></a><span lang="EN-US"><o:p></o:p></span></h3>
  </td>
 </tr>
 <tr>
  <td width="56" valign="top" style="width: 42.3pt; border-right-color: windowtext; border-bottom-color: windowtext; border-left-color: windowtext; border-right-width: 1pt; border-bottom-width: 1pt; border-left-width: 1pt; border-top-style: none; padding: 0cm 5.4pt;">
  <p class="MsoNormal" style="text-indent:0cm;mso-char-indent-count:0"><span lang="EN-US">2<o:p></o:p></span></p>
  </td>
  <td width="227" valign="top" style="width: 6cm; border-top-style: none; border-left-style: none; border-bottom-color: windowtext; border-bottom-width: 1pt; border-right-color: windowtext; border-right-width: 1pt; padding: 0cm 5.4pt;">
  <p class="MsoNormal" style="text-indent:0cm;mso-char-indent-count:0"><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:
  &quot;Times New Roman&quot;">商品和服务。</span><span lang="EN-US"><o:p></o:p></span></p>
  </td>
  <td width="261" valign="top" style="width: 195.55pt; border-top-style: none; border-left-style: none; border-bottom-color: windowtext; border-bottom-width: 1pt; border-right-color: windowtext; border-right-width: 1pt; padding: 0cm 5.4pt;">
  <h3 style="text-indent:0cm;mso-char-indent-count:0"><a name="_Toc416954752"><span style="font-family:宋体;mso-ascii-font-family:黑体;mso-fareast-font-family:宋体;
  mso-fareast-theme-font:minor-fareast;mso-hansi-font-family:黑体">商品</span><span lang="EN-US">/</span></a><span style="font-family:宋体;mso-ascii-font-family:黑体;mso-fareast-font-family:宋体;
  mso-fareast-theme-font:minor-fareast;mso-hansi-font-family:黑体">和</span><span lang="EN-US">/</span><span style="font-family:宋体;mso-ascii-font-family:黑体;mso-fareast-font-family:宋体;
  mso-fareast-theme-font:minor-fareast;mso-hansi-font-family:黑体">服务。</span><span lang="EN-US"><o:p></o:p></span></h3>
  </td>
  <td width="60" valign="top" style="width: 45.05pt; border-top-style: none; border-left-style: none; border-bottom-color: windowtext; border-bottom-width: 1pt; border-right-color: windowtext; border-right-width: 1pt; padding: 0cm 5.4pt;">
  <h3 style="text-indent:0cm;mso-char-indent-count:0"><a name="_Toc416954753"><span style="font-family:宋体;mso-ascii-font-family:黑体;mso-fareast-font-family:宋体;
  mso-fareast-theme-font:minor-fareast;mso-hansi-font-family:黑体">正确</span></a><span lang="EN-US"><o:p></o:p></span></h3>
  </td>
 </tr>
 <tr>
  <td width="56" valign="top" style="width: 42.3pt; border-right-color: windowtext; border-bottom-color: windowtext; border-left-color: windowtext; border-right-width: 1pt; border-bottom-width: 1pt; border-left-width: 1pt; border-top-style: none; padding: 0cm 5.4pt;">
  <p class="MsoNormal" style="text-indent:0cm;mso-char-indent-count:0"><span lang="EN-US">3<o:p></o:p></span></p>
  </td>
  <td width="227" valign="top" style="width: 6cm; border-top-style: none; border-left-style: none; border-bottom-color: windowtext; border-bottom-width: 1pt; border-right-color: windowtext; border-right-width: 1pt; padding: 0cm 5.4pt;">
  <p class="MsoNormal" style="text-indent:0cm;mso-char-indent-count:0"><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:
  &quot;Times New Roman&quot;">永和服装饰品有限公司。</span><span lang="EN-US"><o:p></o:p></span></p>
  </td>
  <td width="261" valign="top" style="width: 195.55pt; border-top-style: none; border-left-style: none; border-bottom-color: windowtext; border-bottom-width: 1pt; border-right-color: windowtext; border-right-width: 1pt; padding: 0cm 5.4pt;">
  <h3 style="text-indent:0cm;mso-char-indent-count:0"><a name="_Toc416954754"><span style="font-family:宋体;mso-ascii-font-family:黑体;mso-fareast-font-family:宋体;
  mso-fareast-theme-font:minor-fareast;mso-hansi-font-family:黑体">永和服装饰品有限公司</span><span lang="EN-US">/</span></a><span style="font-family:宋体;mso-ascii-font-family:黑体;mso-fareast-font-family:宋体;
  mso-fareast-theme-font:minor-fareast;mso-hansi-font-family:黑体">。</span><span lang="EN-US"><o:p></o:p></span></h3>
  </td>
  <td width="60" valign="top" style="width: 45.05pt; border-top-style: none; border-left-style: none; border-bottom-color: windowtext; border-bottom-width: 1pt; border-right-color: windowtext; border-right-width: 1pt; padding: 0cm 5.4pt;">
  <h3 style="text-indent:0cm;mso-char-indent-count:0"><a name="_Toc416954755"><span style="font-family:宋体;mso-ascii-font-family:黑体;mso-fareast-font-family:宋体;
  mso-fareast-theme-font:minor-fareast;mso-hansi-font-family:黑体">正确</span></a><span lang="EN-US"><o:p></o:p></span></h3>
  </td>
 </tr>
 <tr>
  <td width="56" valign="top" style="width: 42.3pt; border-right-color: windowtext; border-bottom-color: windowtext; border-left-color: windowtext; border-right-width: 1pt; border-bottom-width: 1pt; border-left-width: 1pt; border-top-style: none; padding: 0cm 5.4pt;">
  <p class="MsoNormal" style="text-indent:0cm;mso-char-indent-count:0"><span lang="EN-US">4<o:p></o:p></span></p>
  </td>
  <td width="227" valign="top" style="width: 6cm; border-top-style: none; border-left-style: none; border-bottom-color: windowtext; border-bottom-width: 1pt; border-right-color: windowtext; border-right-width: 1pt; padding: 0cm 5.4pt;">
  <p class="MsoNormal" style="text-indent:0cm;mso-char-indent-count:0"><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:
  &quot;Times New Roman&quot;">做好了这件事情就一了百了了</span><span lang="EN-US"><o:p></o:p></span></p>
  </td>
  <td width="261" valign="top" style="width: 195.55pt; border-top-style: none; border-left-style: none; border-bottom-color: windowtext; border-bottom-width: 1pt; border-right-color: windowtext; border-right-width: 1pt; padding: 0cm 5.4pt;">
  <h3 style="text-indent:0cm;mso-char-indent-count:0"><a name="_Toc416954756"><span style="font-family:宋体;mso-ascii-font-family:黑体;mso-fareast-font-family:宋体;
  mso-fareast-theme-font:minor-fareast;mso-hansi-font-family:黑体">做好</span><span lang="EN-US">/</span></a><span style="font-family:宋体;mso-ascii-font-family:黑体;mso-fareast-font-family:宋体;
  mso-fareast-theme-font:minor-fareast;mso-hansi-font-family:黑体">了</span><span lang="EN-US">/</span><span style="font-family:宋体;mso-ascii-font-family:黑体;mso-fareast-font-family:宋体;
  mso-fareast-theme-font:minor-fareast;mso-hansi-font-family:黑体">这</span><span lang="EN-US">/</span><span style="font-family:宋体;mso-ascii-font-family:黑体;mso-fareast-font-family:宋体;
  mso-fareast-theme-font:minor-fareast;mso-hansi-font-family:黑体">件</span><span lang="EN-US">/</span><span style="font-family:宋体;mso-ascii-font-family:黑体;mso-fareast-font-family:宋体;
  mso-fareast-theme-font:minor-fareast;mso-hansi-font-family:黑体">事情</span><span lang="EN-US">/</span><span style="font-family:宋体;mso-ascii-font-family:黑体;mso-fareast-font-family:宋体;
  mso-fareast-theme-font:minor-fareast;mso-hansi-font-family:黑体">就</span><span lang="EN-US">/</span><span style="font-family:宋体;mso-ascii-font-family:黑体;mso-fareast-font-family:宋体;
  mso-fareast-theme-font:minor-fareast;mso-hansi-font-family:黑体">一了百了</span><span lang="EN-US">/</span><span style="font-family:宋体;mso-ascii-font-family:黑体;mso-fareast-font-family:宋体;
  mso-fareast-theme-font:minor-fareast;mso-hansi-font-family:黑体">了</span><span lang="EN-US"><o:p></o:p></span></h3>
  </td>
  <td width="60" valign="top" style="width: 45.05pt; border-top-style: none; border-left-style: none; border-bottom-color: windowtext; border-bottom-width: 1pt; border-right-color: windowtext; border-right-width: 1pt; padding: 0cm 5.4pt;">
  <h3 style="text-indent:0cm;mso-char-indent-count:0"><a name="_Toc416954757"><span style="font-family:宋体;mso-ascii-font-family:黑体;mso-fareast-font-family:宋体;
  mso-fareast-theme-font:minor-fareast;mso-hansi-font-family:黑体">正确</span></a><span lang="EN-US"><o:p></o:p></span></h3>
  </td>
 </tr>
</tbody></table>

<p class="MsoNormal" style="text-indent:24.0pt"><span style="font-family:宋体;
mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:&quot;Times New Roman&quot;">说明：在“</span><span lang="EN-US">1</span><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;
mso-hansi-font-family:&quot;Times New Roman&quot;">”、“</span><span lang="EN-US">2</span><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:
&quot;Times New Roman&quot;">”中我们可以看到，“和服”“服务”根据句意被正确的分析出来了。“</span><span lang="EN-US">3</span><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:
&quot;Times New Roman&quot;">”将“永和服装饰品有限公司”作为了一个长词归为一个词。“</span><span lang="EN-US">4</span><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:
&quot;Times New Roman&quot;">”对“一了百了”分词正确。</span><span lang="EN-US"><o:p></o:p></span></p>

<h3 style="text-indent:24.0pt"><a name="_Toc416954758"><span lang="EN-US">5.1.2&nbsp; </span></a><span style="font-family:宋体;mso-ascii-font-family:黑体;mso-fareast-font-family:宋体;
mso-fareast-theme-font:minor-fareast;mso-hansi-font-family:黑体">关键词代表性</span><span lang="EN-US"><o:p></o:p></span></h3>

<p class="MsoNormal" style="text-indent:24.0pt"><span style="font-family:宋体;
mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:&quot;Times New Roman&quot;">本测试将使用</span><span lang="EN-US" style="background:white">98</span><span style="font-family:宋体;
mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:&quot;Times New Roman&quot;;
background:white">年人民日报的新闻训练进行测试，</span><span lang="EN-US" style="background:
white">98</span><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;
mso-hansi-font-family:&quot;Times New Roman&quot;;background:white">年人民日报当时是被人工分词的。</span><span lang="EN-US" style="background:white"><o:p></o:p></span></p>

<p class="MsoNormal" style="text-indent:24.0pt"><span style="font-family:宋体;
mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:&quot;Times New Roman&quot;;
background:white">例句如下：</span><span lang="EN-US" style="background:white"><o:p></o:p></span></p>

<p class="MsoNormal" style="text-indent:24.0pt"><span lang="EN-US"><v:shape id="图片_x0020_57" o:spid="_x0000_i1026" type="#_x0000_t75" style="width:453.75pt;height:110.25pt;visibility:visible;
 mso-wrap-style:square">
 <img src="${base}/images/xtsm_files/937b116c-6365-4fb0-b262-2719c0a8c651.png" o:title="">
</v:shape></span><span lang="EN-US" style="background:white"><o:p></o:p></span></p>

<p class="MsoNormal" style="text-indent:24.0pt"><span style="font-family:宋体;
mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:&quot;Times New Roman&quot;">关键词对照：（红字为关键词）</span><span lang="EN-US"><o:p></o:p></span></p>

<p class="MsoNormal" style="text-indent:24.0pt"><span lang="EN-US"><v:shape id="图片_x0020_58" o:spid="_x0000_i1025" type="#_x0000_t75" style="width:453.75pt;height:143.25pt;visibility:visible;
 mso-wrap-style:square">
 <img src="${base}/images/xtsm_files/f3dbf3f1-2f87-440b-91a3-2b065a085c14.png" o:title="">
</v:shape></span><span lang="EN-US"><o:p></o:p></span></p>

<p class="MsoNormal" style="text-indent:24.0pt"><span style="font-family:宋体;
mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:&quot;Times New Roman&quot;">关键词抽取：（</span><span lang="EN-US">30</span><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;
mso-hansi-font-family:&quot;Times New Roman&quot;">词上限）</span><span lang="EN-US"><o:p></o:p></span></p>

<p class="MsoNormal" style="text-indent:24.0pt"><span style="font-family:宋体;
mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:&quot;Times New Roman&quot;">美国</span><span lang="EN-US">/</span><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;
mso-hansi-font-family:&quot;Times New Roman&quot;">股市</span><span lang="EN-US">/</span><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:
&quot;Times New Roman&quot;">上升</span><span lang="EN-US">/</span><span style="font-family:
宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:&quot;Times New Roman&quot;">报道</span><span lang="EN-US">/</span><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;
mso-hansi-font-family:&quot;Times New Roman&quot;">纽约时报</span><span lang="EN-US">/</span><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:
&quot;Times New Roman&quot;">华尔街</span><span lang="EN-US">/</span><span style="font-family:
宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:&quot;Times New Roman&quot;">纳斯达克</span><span lang="EN-US">/</span><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;
mso-hansi-font-family:&quot;Times New Roman&quot;">纪录</span><span lang="EN-US">/</span><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:
&quot;Times New Roman&quot;">指数</span><span lang="EN-US">/</span><span style="font-family:
宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:&quot;Times New Roman&quot;">涨幅</span><span lang="EN-US">/</span><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;
mso-hansi-font-family:&quot;Times New Roman&quot;">消费者</span><span lang="EN-US">/</span><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:
&quot;Times New Roman&quot;">信心</span><span lang="EN-US">/</span><span style="font-family:
宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:&quot;Times New Roman&quot;">投资</span><span lang="EN-US">/</span><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;
mso-hansi-font-family:&quot;Times New Roman&quot;">策略</span><span lang="EN-US">/</span><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:
&quot;Times New Roman&quot;">上涨</span><span lang="EN-US">/</span><span style="font-family:
宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:&quot;Times New Roman&quot;">最高</span><span lang="EN-US">/</span><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;
mso-hansi-font-family:&quot;Times New Roman&quot;">人民</span><span lang="EN-US">/</span><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:
&quot;Times New Roman&quot;">全球</span><span lang="EN-US">/</span><span style="font-family:
宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:&quot;Times New Roman&quot;">本年</span><span lang="EN-US">/</span><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;
mso-hansi-font-family:&quot;Times New Roman&quot;">傻钱</span><span lang="EN-US">/</span><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:
&quot;Times New Roman&quot;">交易</span><span lang="EN-US">/</span><span style="font-family:
宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:&quot;Times New Roman&quot;">今年</span><span lang="EN-US">/</span><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;
mso-hansi-font-family:&quot;Times New Roman&quot;">工业</span><span lang="EN-US">/</span><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:
&quot;Times New Roman&quot;">前景</span><span lang="EN-US">/</span><span style="font-family:
宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:&quot;Times New Roman&quot;">经济</span><span lang="EN-US">/</span><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;
mso-hansi-font-family:&quot;Times New Roman&quot;">明年</span><span lang="EN-US">/</span><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:
&quot;Times New Roman&quot;">工商</span><span lang="EN-US">/</span><span style="font-family:
宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:&quot;Times New Roman&quot;">协进会</span><span lang="EN-US">/</span><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;
mso-hansi-font-family:&quot;Times New Roman&quot;">报告</span><span lang="EN-US">/</span><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:
&quot;Times New Roman&quot;">日报</span><span lang="EN-US"><o:p></o:p></span></p>

<p class="MsoNormal" style="text-indent:24.0pt"><span style="font-family:宋体;
mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:&quot;Times New Roman&quot;">评估：我们发现关键词的抽取基本符合文章内容核心</span><span lang="EN-US">——</span><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;
mso-hansi-font-family:&quot;Times New Roman&quot;">关于美国股市上升消费者信心上涨，以及新词“傻钱”。抽取成功！</span><span lang="EN-US"><o:p></o:p></span></p>

<h3 style="text-indent:24.0pt"><a name="_Toc416954759"><span lang="EN-US">5.1.3&nbsp; </span></a><span style="font-family:宋体;mso-ascii-font-family:黑体;mso-fareast-font-family:宋体;
mso-fareast-theme-font:minor-fareast;mso-hansi-font-family:黑体">分词性能</span><span lang="EN-US"><o:p></o:p></span></h3>

<p class="MsoNormal" style="text-indent:24.0pt"><span style="font-family:宋体;
mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:&quot;Times New Roman&quot;">分词性能的测试主要指运算的速度，经过测试，在程序初次运行时（</span><span lang="EN-US">tomcat</span><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;
mso-hansi-font-family:&quot;Times New Roman&quot;">发布后第一次运行）需要一点时间初始化外，随后的抽取都可以马上完成。</span><span lang="EN-US"><o:p></o:p></span></p>

<h2><a name="_Toc416954760"><span lang="EN-US">5.2&nbsp; CWM</span>评估</a><span lang="EN-US"><o:p></o:p></span></h2>

<p class="MsoNormal" style="text-indent:24.0pt"><span style="font-family:宋体;
mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:&quot;Times New Roman&quot;">在前期的设计中，我们碰到的问题绝大多数都是因为网络带宽和目标网站的反爬虫技术阻碍。所以在改变通过新闻</span><span lang="EN-US">RSS</span><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;
mso-hansi-font-family:&quot;Times New Roman&quot;">来抓去之后，无论是在</span><span lang="EN-US">URL</span><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:
&quot;Times New Roman&quot;">质量还是抓取速度方面都得到了提升，但是悠然存在以下几个不足只出需要完善：</span><span lang="EN-US"><o:p></o:p></span></p>

<p class="MsoListParagraph" style="margin-left:42.0pt;text-indent:-18.0pt;
mso-char-indent-count:0;mso-list:l9 level1 lfo18"><span lang="EN-US">1.<span style="font-size: 7pt; line-height: normal; font-family: 'Times New Roman';">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><span style="font-family:宋体;mso-ascii-font-family:
&quot;Times New Roman&quot;;mso-hansi-font-family:&quot;Times New Roman&quot;">多线程的任务处理。该系统网址是支持并发操作的，但是在爬虫处理过程中没有做并发性处理，所以会存在当多用户同时使用</span><span lang="EN-US">CWM</span><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;
mso-hansi-font-family:&quot;Times New Roman&quot;">模块抓去网页时会出现同一个网页被多次抓去的现象。这里的解决方案是需要逐次抽取任务操作。</span><span lang="EN-US"><o:p></o:p></span></p>

<p class="MsoListParagraph" style="margin-left:42.0pt;text-indent:-18.0pt;
mso-char-indent-count:0;mso-list:l9 level1 lfo18"><span lang="EN-US">2.<span style="font-size: 7pt; line-height: normal; font-family: 'Times New Roman';">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</span></span><span style="font-family:宋体;mso-ascii-font-family:
&quot;Times New Roman&quot;;mso-hansi-font-family:&quot;Times New Roman&quot;">网站多模版处理。现在的新闻网站采用了多模版的模式开发，所以在正则表达式的匹配上需要多次匹配才能成功。我们在初期为了验证</span><span lang="EN-US">WKE</span><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;
mso-hansi-font-family:&quot;Times New Roman&quot;">模版直接采用了过滤的方法将不符合规则的链接直接剔除了。</span><span lang="EN-US"><o:p></o:p></span></p>

<span lang="EN-US" style="font-size:12.0pt;mso-bidi-font-size:10.0pt;font-family:
&quot;Times New Roman&quot;,serif;mso-fareast-font-family:宋体;mso-ansi-language:EN-US;
mso-fareast-language:ZH-CN;mso-bidi-language:AR-SA"><br clear="all" style="mso-special-character:line-break;page-break-before:always">
</span>

<p class="MsoNormal" align="left" style="text-indent: 0cm; line-height: normal;"><span lang="EN-US"><o:p>&nbsp;</o:p></span></p>

<h1 align="center" style="text-align:center;text-indent:32.0pt"><a name="_Toc416954761"><span style="font-size:16.0pt;line-height:150%;font-weight:
normal">第<span lang="EN-US">6</span>章<span lang="EN-US">&nbsp; </span>总结</span></a><span lang="EN-US" style="font-size:16.0pt;line-height:150%;font-weight:normal"><o:p></o:p></span></h1>

<p class="MsoNormal" style="text-indent:24.0pt"><span lang="EN-US">RKES</span><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:
&quot;Times New Roman&quot;">项目基于</span><span lang="EN-US">JAVA Web </span><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:
&quot;Times New Roman&quot;">技术和</span><span lang="EN-US">MySQL </span><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:
&quot;Times New Roman&quot;">技术，通过</span><span lang="EN-US">J2EE</span><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:
&quot;Times New Roman&quot;">架构的实施在系统完备性和安全性上做到了企业级系统架构的水准。在系统管理模块达到</span><span lang="EN-US">CRM</span><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;
mso-hansi-font-family:&quot;Times New Roman&quot;">系统的标准，在</span><span lang="EN-US">WKE</span><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:
&quot;Times New Roman&quot;">模块实现了准确率较高的抽取能力，在</span><span lang="EN-US">CWM</span><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:
&quot;Times New Roman&quot;">模块可以实现</span><span lang="EN-US">Web</span><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:
&quot;Times New Roman&quot;">新闻实时抓去、关键词同步批量抽取的功能。</span><span lang="EN-US"><o:p></o:p></span></p>

<p class="MsoNormal" style="text-indent:24.0pt"><span style="font-family:宋体;
mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:&quot;Times New Roman&quot;">至此，</span><span lang="EN-US">Rosetta Keywords Extraction System</span><span style="font-family:
宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:&quot;Times New Roman&quot;">（罗塞塔关键词抽取系统</span><span lang="EN-US"> RKES</span><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;
mso-hansi-font-family:&quot;Times New Roman&quot;">）的实现可以说基本实现。对于初期的期望我们也得到了相应的答案，随着项目的不断开发、完善，我们也对</span><span lang="EN-US">RKES</span><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;
mso-hansi-font-family:&quot;Times New Roman&quot;">提出了更高的要求。</span><span lang="EN-US">WKE</span><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:
&quot;Times New Roman&quot;">模块的实现仍然存在这一些缺陷，其主要原因主要体现在是在词库的不完整上，而这个需要我们关注与自然语言处理的专家们的共同努力。同时</span><span lang="EN-US">RKES</span><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;
mso-hansi-font-family:&quot;Times New Roman&quot;">如何利用，并发挥它潜在的价值仍然值得我们去思考去挖掘。当然，从最初的构想、搭建、设计、运算、学习、实施到最后的实现来看，</span><span lang="EN-US">RKES</span><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;
mso-hansi-font-family:&quot;Times New Roman&quot;">算是比较成功的。</span><span lang="EN-US"><o:p></o:p></span></p>

<p class="MsoNormal" style="text-indent:24.0pt"><span lang="EN-US">RKES</span><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:
&quot;Times New Roman&quot;">项目让我们了解了如何将感性的语言文字通过数学和机器来诠释，让我们感到了数学之美，感叹人工智能的神奇。</span><span lang="EN-US">RKES</span><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;
mso-hansi-font-family:&quot;Times New Roman&quot;">只是一个幸运的开始，他将引领我在算法在开发的世界不断去探索、创新与实践。</span><span lang="EN-US"><o:p></o:p></span></p>

<span lang="EN-US" style="font-size:12.0pt;mso-bidi-font-size:10.0pt;font-family:
&quot;Times New Roman&quot;,serif;mso-fareast-font-family:宋体;mso-ansi-language:EN-US;
mso-fareast-language:ZH-CN;mso-bidi-language:AR-SA"><br clear="all" style="mso-special-character:line-break;page-break-before:always">
</span>

<p class="MsoNormal" align="left" style="text-indent: 0cm; line-height: normal;"><a name="_Toc387266432"></a><a name="_Toc351991568"></a><a name="_Toc245461687"></a><a name="_Toc244579134"><b><span lang="EN-US" style="font-size:15.0pt;font-family:黑体;mso-bidi-font-family:宋体;
mso-font-kerning:18.0pt"><o:p>&nbsp;</o:p></span></b></a></p>

<h1 align="center" style="text-align:center;text-indent:32.0pt"><a name="_Toc416954762"><span style="font-size:16.0pt;line-height:150%;font-weight:
normal">参考文献</span></a><span lang="EN-US" style="font-size:16.0pt;line-height:150%;font-weight:normal"><o:p></o:p></span></h1>

<p class="MsoNormal" style="text-indent:0cm;mso-char-indent-count:0;layout-grid-mode:
char;mso-layout-grid-align:none"><span lang="EN-US" style="font-size:10.5pt;
line-height:150%;font-family:楷体_GB2312;mso-hansi-font-family:宋体">[1] </span><span style="font-size:10.5pt;line-height:150%;font-family:楷体_GB2312;mso-hansi-font-family:
宋体">孙践知等著<span lang="EN-US">.Java Web</span>从基础到应用<span lang="EN-US">[M]</span>，清华大学出版社，<span lang="EN-US">2014<o:p></o:p></span></span></p>

<p class="MsoNormal" style="text-indent:0cm;mso-char-indent-count:0;layout-grid-mode:
char;mso-layout-grid-align:none"><span lang="EN-US" style="font-size:10.5pt;
line-height:150%;font-family:楷体_GB2312;mso-hansi-font-family:宋体">[2] </span><span style="font-size:10.5pt;line-height:150%;font-family:楷体_GB2312;mso-hansi-font-family:
宋体">胡学钢<span lang="EN-US">. </span>基于词汇链的中文新闻网页关键词抽取方法<span lang="EN-US">[J]. </span>模式识别与人工智能<span lang="EN-US">, 2010, 23(1):<o:p></o:p></span></span></p>

<p class="MsoNormal" style="text-indent:0cm;mso-char-indent-count:0;layout-grid-mode:
char;mso-layout-grid-align:none"><span lang="EN-US" style="font-size:10.5pt;
line-height:150%;font-family:楷体_GB2312;mso-hansi-font-family:宋体">[3] </span><span style="font-size:10.5pt;line-height:150%;font-family:楷体_GB2312;mso-hansi-font-family:
宋体">钱爱兵、江岚<span lang="EN-US">. </span>基于改进<span lang="EN-US">TF-IDF</span>的中文网页关键词抽取——以新闻网页为例<span lang="EN-US"> [J]. </span>情报理论与实践<span lang="EN-US">, 2008, 31(6): <o:p></o:p></span></span></p>

<p class="MsoNormal" style="text-indent:0cm;mso-char-indent-count:0;layout-grid-mode:
char;mso-layout-grid-align:none"><span lang="EN-US" style="font-size:10.5pt;
line-height:150%;font-family:楷体_GB2312;mso-hansi-font-family:宋体">[4] </span><span style="font-size:10.5pt;line-height:150%;font-family:楷体_GB2312;mso-hansi-font-family:
宋体">蒋效宇<span lang="EN-US">. </span>基于关键词抽取的自动文摘算法<span lang="EN-US">[J]. </span>计算机工程<span lang="EN-US">, 2012, 38(3):<o:p></o:p></span></span></p>

<p class="MsoNormal" style="text-indent:0cm;mso-char-indent-count:0;layout-grid-mode:
char;mso-layout-grid-align:none"><span lang="EN-US" style="font-size:10.5pt;
line-height:150%;font-family:楷体_GB2312;mso-hansi-font-family:宋体">[5]</span><span style="font-size:10.5pt;line-height:150%;font-family:楷体_GB2312;mso-hansi-font-family:
宋体">高俊波等<span lang="EN-US">. </span>新的关键字提取算法研究<span lang="EN-US">[J]</span>，中国学术期刊，<span lang="EN-US">2008.<o:p></o:p></span></span></p>

<p class="MsoNormal" style="text-indent:0cm;mso-char-indent-count:0;layout-grid-mode:
char;mso-layout-grid-align:none"><span lang="EN-US" style="font-size:10.5pt;
line-height:150%;font-family:楷体_GB2312;mso-hansi-font-family:宋体">[6] </span><span style="font-size:10.5pt;line-height:150%;font-family:楷体_GB2312;mso-hansi-font-family:
宋体">钱爱兵<span lang="EN-US">,</span>江岚<span lang="EN-US">.&nbsp; </span>基于改进<span lang="EN-US">TF-IDF</span>的中文网页关键词抽取——以新闻网页为例<span lang="EN-US">[J]. </span>情报理论与实践<span lang="EN-US">. 2008(06)<o:p></o:p></span></span></p>

<p class="MsoNormal" style="text-indent:0cm;mso-char-indent-count:0;layout-grid-mode:
char;mso-layout-grid-align:none"><span lang="EN-US" style="font-size:10.5pt;
line-height:150%;font-family:楷体_GB2312;mso-hansi-font-family:宋体">[7] </span><span style="font-size:10.5pt;line-height:150%;font-family:楷体_GB2312;mso-hansi-font-family:
宋体">谢飞等<span lang="EN-US">. </span>基于语义联系的新闻网页关键词抽取<span lang="EN-US">[J]. </span>广西师范大学学报<span lang="EN-US">(</span>自然科学版<span lang="EN-US">), 2009, 27(1):<o:p></o:p></span></span></p>

<p class="MsoNormal" style="text-indent:0cm;mso-char-indent-count:0;layout-grid-mode:
char;mso-layout-grid-align:none"><span lang="EN-US" style="font-size:10.5pt;
line-height:150%;font-family:楷体_GB2312;mso-hansi-font-family:宋体">[8] </span><span style="font-size:10.5pt;line-height:150%;font-family:楷体_GB2312;mso-hansi-font-family:
宋体">竹勇<span lang="EN-US">. </span>基于知识库的中文关键词<span lang="EN-US">top-N</span>关系查询处理<span lang="EN-US">[D]. </span>河北大学<span lang="EN-US">:</span>竹勇<span lang="EN-US">, 2011.<o:p></o:p></span></span></p>

<p class="MsoNormal" style="text-indent:0cm;mso-char-indent-count:0;layout-grid-mode:
char;mso-layout-grid-align:none"><span lang="EN-US" style="font-size:10.5pt;
line-height:150%;font-family:楷体_GB2312;mso-hansi-font-family:宋体">[9] </span><span style="font-size:10.5pt;line-height:150%;font-family:楷体_GB2312;mso-hansi-font-family:
宋体">徐文海<span lang="EN-US">. </span>一种基于<span lang="EN-US">TFIDF</span>方法的中文关键词抽取算法<span lang="EN-US"> [J]. </span>情报理论与实践<span lang="EN-US">, 2008, 31(2):<o:p></o:p></span></span></p>

<p class="MsoNormal" style="text-indent:0cm;mso-char-indent-count:0;layout-grid-mode:
char;mso-layout-grid-align:none"><span lang="EN-US" style="font-size:10.5pt;
line-height:150%;font-family:楷体_GB2312;mso-hansi-font-family:宋体">[10] Li-Ping,
Jing. Improved feature selection approach TFIDF in text mining[Z]. Beijing,
China: 2002 International Conference on Machine Learning and Cybernetics,
vol.2,2002.<o:p></o:p></span></p>

<p class="MsoNormal" style="text-indent:0cm;mso-char-indent-count:0;layout-grid-mode:
char;mso-layout-grid-align:none"><span lang="EN-US" style="font-size:10.5pt;
line-height:150%;font-family:楷体_GB2312;mso-hansi-font-family:宋体">[11] Yi-Hui
Chen;Eric Jui-Lin Lu. Finding keywords in blogs: Efficient keyword extraction
in blog mining via user behaviors[J]. Expert Systems with Application , 2014,
41(2):<o:p></o:p></span></p>

<p class="MsoNormal" style="text-indent:0cm;mso-char-indent-count:0;layout-grid-mode:
char;mso-layout-grid-align:none"><span lang="EN-US" style="font-size:10.5pt;
line-height:150%;font-family:楷体_GB2312;mso-hansi-font-family:宋体">[12] MASAKI
SAMEJIMA </span><span style="font-size:10.5pt;line-height:150%;font-family:
楷体_GB2312;mso-hansi-font-family:宋体">；<span lang="EN-US">MAYU GEN </span>；<span lang="EN-US">TAKESHI NAKAZAKI </span>；<span lang="EN-US">MASANORI AKIYOSHI </span>；<span lang="EN-US">NORIHISA KOMODA. An Extraction Method of Time-Series Numerical Data
from Press Releases by Using Co-Occurrence Conditions of Numbers and Time
Stamps Related to Target Business Keywords[J]. Electronics and Communications
in Japan , 2010, 93(3):<o:p></o:p></span></span></p>

<p class="MsoNormal" style="text-indent:0cm;mso-char-indent-count:0;layout-grid-mode:
char;mso-layout-grid-align:none"><span lang="EN-US" style="font-size:10.5pt;
line-height:150%;font-family:楷体_GB2312;mso-hansi-font-family:宋体">[13] Jinhee
Park </span><span style="font-size:10.5pt;line-height:150%;font-family:楷体_GB2312;
mso-hansi-font-family:宋体">；<span lang="EN-US">Jaekwang Kim </span>；<span lang="EN-US">Jee Hyong Lee. Keyword extraction for blogs based on content
richness[J] Journal of Information Science: Principles &amp; Practice, 2014,
40(1):<o:p></o:p></span></span></p>

<span lang="EN-US" style="font-size:12.0pt;mso-bidi-font-size:10.0pt;font-family:
&quot;Times New Roman&quot;,serif;mso-fareast-font-family:宋体;mso-ansi-language:EN-US;
mso-fareast-language:ZH-CN;mso-bidi-language:AR-SA"><br clear="all" style="mso-special-character:line-break;page-break-before:always">
</span>

<p class="MsoNormal" align="left" style="text-indent: 0cm; line-height: normal;"><span lang="EN-US"><o:p>&nbsp;</o:p></span></p>

<h1 align="center" style="text-align:center;text-indent:32.0pt"><a name="_Toc416954763"><span style="font-size:16.0pt;line-height:150%;font-weight:
normal">致谢</span></a><span lang="EN-US" style="font-size:16.0pt;line-height:150%;
font-weight:normal"><o:p></o:p></span></h1>

<p class="MsoNormal" align="left" style="text-indent: 21pt; line-height: 15.75pt;"><span style="font-size: 10.5pt; font-family: 楷体;">真理有三部分：考查，即求取它；认识，即它已存在；信心，即运用它。</span><span lang="EN-US" style="font-size: 10.5pt; font-family: 微软雅黑, sans-serif;"><o:p></o:p></span></p>

<p class="MsoNormal" align="left" style="margin-left: 357pt; text-indent: 21pt; line-height: 15.75pt;"><span style="font-size: 10.5pt; font-family: 楷体;">——苏格拉底</span><span lang="EN-US" style="font-size: 10.5pt; font-family: 微软雅黑, sans-serif;"><o:p></o:p></span></p>

<p class="MsoNormal" style="text-indent:24.0pt"><span style="font-family:宋体;
mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:&quot;Times New Roman&quot;">感谢自己。感谢自己能够用认真的态度和源源不断的激情去完成学生时代最后的一次作业。到此为止，这份答卷看到的不单单是</span><span lang="EN-US">RKES</span><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;
mso-hansi-font-family:&quot;Times New Roman&quot;">本身，更多的是自己的一种创作的乐趣。这将会是今后的工作生活中正能量。</span><span lang="EN-US"><o:p></o:p></span></p>

<p class="MsoNormal" style="text-indent:24.0pt"><span style="font-family:宋体;
mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:&quot;Times New Roman&quot;">感谢那些在项目设计中基于我帮助的人：</span><span lang="EN-US"><o:p></o:p></span></p>

<p class="MsoNormal" style="margin-left:21.0pt;mso-para-margin-left:1.75gd;
text-indent:24.0pt"><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;
mso-hansi-font-family:&quot;Times New Roman&quot;">工程搭建：上海中软</span><span lang="EN-US">&nbsp; </span><span style="font-family:宋体;
mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:&quot;Times New Roman&quot;">李开；</span><span lang="EN-US"><o:p></o:p></span></p>

<p class="MsoNormal" style="margin-left:21.0pt;mso-para-margin-left:1.75gd;
text-indent:24.0pt"><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;
mso-hansi-font-family:&quot;Times New Roman&quot;">爬虫技术：坤渡技术</span><span lang="EN-US">&nbsp; </span><span style="font-family:宋体;
mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:&quot;Times New Roman&quot;">王玉佩；</span><span lang="EN-US"><o:p></o:p></span></p>

<p class="MsoNormal" style="margin-left:21.0pt;mso-para-margin-left:1.75gd;
text-indent:24.0pt"><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;
mso-hansi-font-family:&quot;Times New Roman&quot;">论文指导：上海商学院</span><span lang="EN-US">&nbsp; </span><span style="font-family:宋体;
mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:&quot;Times New Roman&quot;">龙青云老师；</span><span lang="EN-US"><o:p></o:p></span></p>

<p class="MsoNormal" style="margin-left:21.0pt;mso-para-margin-left:1.75gd;
text-indent:24.0pt"><span lang="EN-US">Anjs</span><span style="font-family:宋体;
mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:&quot;Times New Roman&quot;">分词：中科院</span><span lang="EN-US">&nbsp; Ansj</span><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:
&quot;Times New Roman&quot;">（微博名）。</span><span lang="EN-US"><o:p></o:p></span></p>

<p class="MsoNormal" style="margin-left:21.0pt;mso-para-margin-left:1.75gd;
text-indent:24.0pt"><span style="font-family:宋体;mso-ascii-font-family:&quot;Times New Roman&quot;;
mso-hansi-font-family:&quot;Times New Roman&quot;">感谢他们把自己最宝贵的建议和精力分享给我，让我在开发的过程中走得不那么坎坷。</span><span lang="EN-US"><o:p></o:p></span></p>

<p class="MsoNormal" style="text-indent:24.0pt"><span style="font-family:宋体;
mso-ascii-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:&quot;Times New Roman&quot;">到此为止，关于</span><span lang="EN-US">Rosetta</span><span style="font-family:宋体;mso-ascii-font-family:
&quot;Times New Roman&quot;;mso-hansi-font-family:&quot;Times New Roman&quot;">（罗塞塔）的含义需要说明一下。在《数学之美》一书中提到了罗塞塔石碑对于人类了解古代埃及的重要原因，那是人类文明起源与信息传递的标志。而本次系统开发以此为名，也是对科学技术与文明的致敬！</span><span lang="EN-US"><o:p></o:p></span></p>

<p class="MsoNormal" style="text-indent:24.0pt"><span lang="EN-US"><o:p>&nbsp;</o:p></span></p>



</body></html>