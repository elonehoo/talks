---
layout: cover
highlighter: shiki
css: unocss
colorSchema: dark
transition: fade-out
---

<h1 flex="~ col">
<div>Vue开发体验</div>
<div flex="~ gap3" items-center>with <span inline-block i-logos:vue text-1.2em mb-2/> <b font-bold>Vue</b></div>
</h1>

<div uppercase text-sm tracking-widest>
Elone Hoo
</div>

<div abs-br mx-10 my-12 flex="~ col" text-sm text-right>
  <div>Work Talks</div>
  <div text-sm opacity-50>Mar. 4th 2023</div>
</div>

---
layout: intro
growX: 10
growY: 90
style: 'padding-left: 8rem;'
---

# Elone Hoo

<div class="leading-8 opacity-80">
PiniaOrm, VueHooksForm, Pistachio, LogonTracer 等开源项目作者<br>
任职于 Beneway<br>
</div>

<div my-10 w-min grid="~ cols-[40px_1fr] gap-y4" items-center justify-center>
  <div i-ri-github-line op50 ma text-xl/>
  <div><a href="https://github.com/elonehoo" target="_blank">elonehoo</a></div>
  <div i-ri-twitter-line op50 ma text-xl/>
  <div><a href="https://twitter.com/elonehoo" target="_blank">elonehoo</a></div>
  <div i-ri-user-3-line op50 ma text-xl/>
  <div><a href="https://elonehoo.me" target="_blank">elonehoo.me</a></div>
</div>

<img src="https://elonehoo.me/avatar.png" rounded-full w-40 abs-tr mt-16 mr-12/>

<div flex="~ gap2">

</div>

<!--

-->

---
layout: center
growX: 50
growY: 120
growSize: 1.5
---

# 开发者体验

<!--
让我们从谈论开发者体验开始。这些年我们越来越频繁地听说开发者体验。 框架在改善开发人员体验方面付出了很多努力，使我们的工作更有效率和成果，当然还有更好的体验。在这里，我想把这个大概念分成不同的部分，看看我们做了什么来真正从框架的角度有所不同。
-->

---
growX: 50
growY: 0
---

# 响应能力

<div flex="~" justify-evenly items-center h-90>
<v-clicks>

<div flex="~ col" items-center>
<img w-20 mb6 src="/vite.svg">
<div text-2xl>Vite</div>
<div text-base op50>网页中的 HMR</div>
</div>

<div flex="~ col" items-center>
<img w-20 mb6 src="/vite-node.svg">
<div text-2xl>vite-node</div>
<div text-base op50>Node 中的 HRM</div>
</div>

<div flex="~ col" items-center>
<img w-20 mb6 src="/spring-devtool.svg">
<div text-2xl>Spring DevTool</div>
<div text-base op50>用于后端 API 重新加载</div>
</div>

</v-clicks>
</div>

<!--
我要选择的第一件事是“响应能力”，也就是我们俗称的HMR。

在 Vue 3 中，我们将默认的捆绑器切换为 Vite，该工具以其即时热模块替换而闻名，或者称为 HMR。 它使您几乎可以立即看到从代码到应用程序的更改，并创建了一个很好的工作流程和反馈循环。

在服务器端渲染上，我们使用 `vite-node`，与 Vitest 相同的引擎，在服务器端执行 HMR。

最后，我们介绍了 Spring DevTool，除了它提供的许多很棒的功能外，它还在开发时为服务器 API 提供热重载。 还记得每次更改后端 API 时需要重新启动节点进程的时间吗？ SpringBoot 不再如此！

结合所有这些工具，我们能够使您的应用程序对您所做的任何更改做出改变，无论是客户端代码、ssr 还是服务器端 API。
-->

---

# 常见做法

<v-clicks>

- TypeScript / ESM

- SPA / SSR / Static / Hybrid
- 布局、插件、路由中间件...
- 组合实用程序 - `useState`、`useAsyncData`、`useFetch`...
- Head/SEO - `useHead`, `useSeoMeta`...
- 后端集成、serverless 等。

</v-clicks>

<!--
作为一个框架，Vue 社区提供了很多通用的内置实践。

感谢 Vite 提供了 TypeScript 和 ESM 的开箱即用。

Vue 社区还使构建单页应用程序、服务器端呈现、静态站点生成或按路由混合它们变得简单——使用相同的代码库同构而无需任何显式设置。

然后我们提供了布局系统、插件、路由中间件等，让应用程序的创建更容易，你的代码库更有条理。

最重要的是，我们还提供了一些可组合的实用程序，例如 `useState` 和 `useAsyncData`，以及 SEO 实用程序，例如 `useHead` 和 `useSeoMeta`，使状态可以跨服务器端和客户端访问。

更不用说我们还拥有最好的后端集成之一。 借助 Spring Devtool，我们可以使用零配置将 HMR 在 Spring 项目中展示。

所有这些功能都试图提供您可能需要的开箱即用的常见做法和合理的默认设置。 并节省您的时间去配置它们。
-->

---
growX: 80
growY: 80
---

# 惯例

<v-clicks>

- 基于文件的路由

- 组件自动导入

- Composition API 自动导入

- 端到端类型

</v-clicks>

<!--
然后到了很酷的部分，我们还介绍了一些约定。

第一个是基于文件的路由，它允许您通过简单地在文件系统中创建具有相同结构的 Vue 组件来拥有一个多页面应用程序。

然后我们添加组件自动导入，components 文件夹下的组件将在任何与其文件名相同的 Vue 文件中直接可用。 而且，它们将很好地进行代码拆分。

在 Vue 社区中，我们引入了 unplugin-auto-import-api 。 这意味着您不再需要在每个组件中键入 `import { ref } from 'vue'`。 Vue 的 API 可直接供您使用。 第 3 方模块还可以提供要自动导入的自定义可组合项，这同样适用于我们本地的 Composition API。

最后，所有这些约定都是完全同步的。 在进行路线导航或从 API 获取数据时，我们甚至可以使用类型自动完成功能。

引入约定可以大大减少我们需要编写的样板文件并避免代码库中的重复。 我认为这对提高工作效率有很大的帮助。
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
