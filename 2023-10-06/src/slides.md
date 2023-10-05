---
layout: cover
highlighter: shiki
css: unocss
colorSchema: dark
transition: fade-out
---

<h1 flex="~ col">
<div>项目中架构技术讲述和复制项目的条件</div>
<div flex="~ gap3" items-center>with <span inline-block i-logos:spring-icon text-1.2em mb-2/> <b font-bold>Spring</b></div>
</h1>

<div uppercase text-sm tracking-widest>
Elone Hoo
</div>

<div abs-br mx-10 my-12 flex="~ col" text-sm text-right>
  <div>Work Talks</div>
  <div text-sm opacity-50>
    October 6th, 2023
  </div>
</div>

<!--
在接下来的时间，我们将来展示一下桐庐项目中的一些技术亮点和复制条件的初步思考。

接下来我们会先查看大纲。我们会从四个部分来介绍桐庐项目。
-->

---
layout: intro
growX: 10
growY: 90
style: 'padding-left: 8rem;'
---

# 全新项目架构

<div class="leading-8 opacity-80">
将插件的思想单独整理汇总，形成了一个架构的思想，这个架构的思想可以应用到任何的项目中去。
</div>

<div my-10 w-max grid="~ cols-[40px_1fr] gap-y4" items-center justify-center>
  <div i-ri-git-pull-request-line op50 ma text-xl/>
  <div>项目介绍</div>
  <div i-ri-reserved-fill op50 ma text-xl/>
  <div>架构介绍</div>
  <div i-ri-lightbulb-flash-line op50 ma text-xl/>
  <div>项目亮点和推广条件</div>
  <div i-ri-github-line op50 ma text-xl/>
  <div>项目仓库</div>
</div>

<!--

-->

---
layout: center
growX: 50
growY: 120
growSize: 1.5
---

# 项目介绍

<!--
在桐庐的项目中我们可以简单的将项目理解为两部分，数据收集展示 + 事项流程管理。
-->

---
growX: 50
growY: 0
---

# 数据收集和展示

<div flex="~" justify-evenly items-center h-90>
<v-clicks>

<div flex="~ col" items-center>
<div w-20 h-20 mb6 i-logos-netuitive/>
<div text-2xl>接口对接的方式</div>
<div text-base op50>
  我们可以通过对接 数据提供方 
  <br />
  所提供的接口来获取数据。
</div>
</div>

<div flex="~ col" items-center>
<div w-20 h-20 mb6 i-logos-headlessui-icon />
<div text-2xl>文件导入的方式</div>
<div text-base op50>
我们也可以通过文件导入的方式来获取数据
</div>
</div>

</v-clicks>
</div>

<!--
我们可以先来确定一些前提，我们获取所需数据的方式，有且只有两种

1.通过接口对接的方案，进行获取，这里可能会包裹「API」和 数据库对接的方式
2.通过上传文件我们获取到文件中的数据。

但是无论是什么方式我们都可以确定的是，我们其实获取到的是 内容 ，而非格式，因为格式在之前确定的，也是我们获取到的内容的表达方式。
-->

---

# 初步架构分析

<v-clicks>

- 单独存储格式，且格式可以发生变化。
- 将格式的存储分列化。
- 将内容与列进行组合关联。
- 通过插件的组合方式完成数据的收集和展示。

</v-clicks>

<!--
我们可以设计出简单的架构模型

1. 我们单独的存储格式，我们可以简单的将格式理解为「表头」。

2.在将「格式/表头」的存储方式修改为列的存储的方式，
也就是我们可以存储表头的每一列，例如名称，显示的后缀，位次。

3. 我们所存储的内容如果与表头的每一列进行关联。那么在查询的时候我们就可以查询到这些内容数据。

4. 在以上的条件中我们就可以在查看数据的时候，查找到所需要的表，在根据表格查询到表格需要展示的表头，在根据表头将内容依次查询到，这就如果拼图一样在数据展示的时候将表格拼出来。
-->

---
growX: 80
growY: 80
---

# 扩展

<v-clicks>

- 根据数据进行图表的关联。

- 根据图表进行展示的模式关联。

- 将该架构单独抽出，成为独立的插件。

</v-clicks>

<!--
我们可以在这个的架构基础上进行扩展，可以将很多展示数据的需求与他们进行绑定。

例如我们可以绑定图表的渲染方式和渲染逻辑。可以对于展示的图表类型进行关联。甚至我们可以将这一块单独剥离，成为插件系统。

接下来我们将用最直观的方式展示架构图。
-->

---
growX: 0
growY: 90
---

# 架构图


<v-clicks>
  
<img src="/Architecture.svg">  

</v-clicks>

<!--
我们将最核心的部分组绘制成了图，可以直观的用图画的形式查看对于该插件系统的理解和思想。

我们可以先设置表格，再由客户进行初步的设置表头。我们将表头的每一个值进行单独的存储，同时可以增加更多的关联项。

这样我们可以发散自己的思维，增加更多的功能，例如
- 我们可以增加图表的关联，
- 增加图表的展示方式，
- 增加图表的展示逻辑，
- 增加图表的展示类型。
-->

---
growX: 0
growY: 50
layout: two-cols
---

# 项目中的 <span v-click> - 业务流程</span>

<v-clicks>

- 在桐庐县中出现的问题

  - 流程的不准确性，体现在用户无法对于自己的业务进行准备的表达，和使用者对于流程的意见。
  
  - 那么流程本身也应该是不同区域不同流程，所以这里我们需要在下次该类型的项目中对于流程也如同上述的插件进行修改。

</v-clicks>

<!--
在这个项目中，我们出现了一些问题。

我们很难理解客户的业务流程，他们也无法准确的描述出自己的业务流程，导致我们对于整体的业务流程是匮乏认知和匮乏理解的。

但本身该项目的业务流程是定制的需求。
-->

---
growX: 0
growY: -30
growFollow: false
layout: two-cols
---

# 项目的复制<span v-click>的可能性</span>

<p v-click>如果将项目按照上述的逻辑进行拆分，</p>

<v-clicks>

- 那么只需要满足数据汇总和展示的需求，那么就可以完成一个项目的复制。

- 或者将数据系统剥离出来，成为插件系统。

</v-clicks>

<!--
如果我们将插件系统剥离出来，那么只要其他项目中有对于数据汇总和展示的需求，这个插件就派上了用场，因为业务流程过于定制化了，大概率是定制需求，所以只需要在后续的项目中满足其中一条就可以大概率实现复制的想法。
-->

---
layout: center
growX: 20
growY: 0
---

# 更进一步

<!--
那么接下来，将会演示一下具体页面，展示这个插件架构目前的成果
-->

---
layout: center
class: text-center
growX: 50
growY: 50
growSize: 0.4
---

<h1>Demo 时间!</h1>

<!--
让我们前往 Demo
-->

---
layout: center
class: text-center
scale: 0.5
growFollow: false
---

<a href="https://localhost:8001/#/login?redirect=/dashboard" target="	
_blank">查看 Demo</a>

---
layout: intro
class: text-center pb-5
growX: 50
growY: 120
---

# Thank You!

Slides on [elonehoo.me](https://elonehoo.me)

<!--
我的谈话就到此为止。 这些幻灯片可以在我的网站上找到。 谢谢！
-->
