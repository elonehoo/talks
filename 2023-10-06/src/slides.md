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
  <div text-sm opacity-50>October 6th, 2023</div>
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

# 生态

<iframe v-click src="https://cn.vitejs.dev/plugins/" 
  onload="this.style.visibility = 'visible';" 
  scale-50 origin-top-right absolute right-0 top-0 bottom-0 w="140%" h="200%" 
  style="mix-blend-mode: lighten;filter:contrast(1.15);visibility:hidden;"
/>


<v-clicks>

- 模块

- 轻松整合

</v-clicks>

<!--
在生态系统方面，Vue 有一个庞大的社区来围绕它构建模块。 在我们的网站上看看这些，我们有数百个高质量的模块供您选择，这里的所有模块都可用于 Vue 3。有了插件，我们可以毫不费力地集成想要的功能。 他们正在为我们处理细节和最佳实践。
-->

---
growX: 0
growY: 50
layout: two-cols
---

# Vue中的 <span v-click> - 响应式</span>

<template v-slot:right>

![](/excel-reactive.png)

</template>


<v-clicks>

- 自动收集依赖 & 更新

- Vue 3 中新的 API
  - ref
  - reactive
  - effect
  - computed

</v-clicks>

<!--
那么什么是响应式呢？提到这个就得祭出这张非常经典的 GIF。在一个 Excel 表格里面，我们会以公式的形式去定义一个一个单元格应该去做怎么样的一个运算。那么大家可以看到，在我设置好了 `A3` 这个格子的公式之后，我去更新 `A1` 的数值时， `A3` 就会自动更新，而我不需要再去做任何的操作。这就是响应是能够给我们带来的一个非常好的帮助，依赖的自动收集跟更新。
-->

---
growX: 0
growY: -30
growFollow: false
layout: two-cols
---

# 响应式 <span v-click> - Reactive</span>

<template v-slot:right>

```ts
const reactive = target => new Proxy(target, {
  get(target, prop, receiver) {
    track(target, prop)
    return Reflect.get(...arguments) // get original data
  },
  set(target, key, value, receiver) {
    trigger(target, key)
    return Reflect.set(...arguments)
  }
})

const obj = reactive({
  hello: 'world'
})

console.log(obj.hello) // `track()` get called
obj.hello = 'vue' // `trigger()` get called
```

</template>

<v-clicks>

- 使用 Proxy 实现

- track，trigger 进行响应式追踪

</v-clicks>

<!--
在 Vue 3 里面，我们对整个响应式系统做了一个重新的设计，同时暴露出了这几个新的API，`ref` `reactive` `computed` `effect`。我们把原本 Vue 2 `Object.defineProperty` 的实现改成了使用 `Proxy` 的实现方式。而 `Proxy` 可以给我们提供对属性更新监控的更大的灵活性。

我们可以通过 `get` 和 `set` 这两个 `handler` 去追踪每一个属性的访问和修改，在这个例子中我们在 `get` 里注入了 `track` 这个函数，在 `set` `里注入了trigger` 这个函数。那么在对 `reactive` 这个对象的 `hello` 属性进行访问的时候 `track` 就会被执行，在对 `obj.hello` `进行赋值的时候，trigger` 就会被执行。通过 `track` 和 `trigger` 我们就可以进行一些响应式的追踪。
-->

---
growX: 0
growY: -30
growFollow: false
layout: two-cols
---

# 响应式 <span v-click> - Effect</span>

<template v-slot:right>

```ts
const targetMap = new WeakMap()

export const track = (target, key) => {
  if (tacking && activeEffect)
    targetMap.get(target).key(key).push(activeEffect)
}

export const trigger = (target, key) => {
  targetMap.get(target).key(key).forEach(effect => effect())
}

export const effect = (fn) => {
  const effect = function () { fn() }
  enableTracking()
  activeEffect = effect
  fn()
  resetTracking()
  activeEffect = undefined
}
```

</template>

<v-clicks>

- track 追踪调用它的函数

- trigger 出发绑定的更新

- effect 调用函数并且触发收集依赖

</v-clicks>

<!--
`effect` 是在 Vue 3 里面新引入的一个API，它的作用就是去结合 `track` 和 `trigger` 这两个功能，`track` 的作用是追踪调用他的函数，`trigger` 是去触发绑定的依赖更新。

在 `effect` 里面我们会接受一个函数作为参数，在执行这个函数之前的我们会开启 tracking，然后把当前的函数设置在一个全局变量 `activeEffect`，然后再去执行这个函数。那么在这个函数的调用时间里面我们有任何的 reactive 的调用就会触发 `track` 这个函数。`track` 的主要功能就是说我们把当前的 `activeEffect` 绑定到所触发它的这个属性调用上。然后在数据更新的时候，我们再去找到这个依赖上面所绑定的所有 `effect` 把他们一一调用。这样就完成了一个最基本的响应式的功能。

-->

---
layout: center
growX: 20
growY: 0
---

# 更进一步

<!--
因此，通过 Vue3 的上下文，让我们对于代码管理向前迈一步
-->

---
layout: 'center'
class: 'text-center'
growX: 50
growY: 10
---

<div v-click transition-all duration-500 :class="$slidev.nav.clicks === 0 ? 'op0' : $slidev.nav.clicks > 1 ? 'op50 text-2xl' : 'translate-y-10 text-4xl'">介绍</div>

<div class="nuxt-devtools-logo" v-click>
  <Git h-20/>
</div>

---

<h1><Git h-15/></h1>

<div text-2xl>
<v-clicks>

- 多分支管理

- 多版本控制

- 最佳的 diff 展示

</v-clicks>
</div>

<!--
众所周知 Git 是一个开源的现代版本控制系统。

多分支管理是 Git 一个非常重要的特点，因为多分支可以保证主分支不会产生任何的问题，而工作分支确定无误，就可以加入主分支。

Git 天然的支持多个版本，如果当前版本出现问题，我们可以方便的回滚到上一个版本。

在 Git 中我们可以清晰的看到每个提交之间所产生的差异。
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

<a href="https://github.com/benewy/tl-supervise" target="	
_blank">查看 Demo</a>

<!--
所以，这是一个使用 Git 孵化的项目，在这里我们可以看到我们是如何处理分支和看到所有的版本，以及我们在这个项目中的diff。

首先我们点开 tag 可以看到所对应的版本，和每一个版本之间的功能差异。

在点开 Pull Request 可以看到我们是如何处理多分支之间的合并。

随便点开一个 PR，打开  Files changed 可以看到里面的文件差异，这个就是我们所说的 diff
-->

---
layout: center
class: text-center
growX: 50
growY: 0
---

# 这就是我们在这个项目中是如何使用 Git 的

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
