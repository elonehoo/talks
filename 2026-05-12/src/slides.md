---
layout: cover
highlighter: shiki
css: unocss
colorSchema: dark
transition: fade-out
mdc: true
glowSeed: 20260512
title: 如何让 Agent 融入我们的日常工作
---

# 如何让 Agent 帮助我们的日常工作 {.font-600! .text-5xl!}

<div class="text-2xl mt--1 op70 text-theme">Agent in Daily Work</div>

<div class="abs-br mx-10 my-12 flex flex-col text-sm text-right">
  <div>Work Talks</div>
  <div class="text-sm opacity-50">
    May 12th, 2026
  </div>
</div>

<!--
相信大家这几天应该已经在御龙平台上看到了我们的软件，那么我们就来聊一聊这种软件怎么帮助我们的日常工作。

今天的培训目标很简单：培训结束后，大家能独立使用御小龙完成日常工作中的文档处理、协同沟通和知识管理。
-->

---
layout: fact
clicks: 1
---

<div class="absolute inset-0 overflow-hidden">
  <h1
    class="absolute left-0 top-[24px] z-1 m-0 w-full text-center text-[2.9rem] font-600! leading-none text-theme transition-transform duration-700 ease-out"
    :class="$clicks >= 1 ? 'translate-y-0' : 'translate-y-[168px]'"
  >
    御小龙
  </h1>

  <img
    class="absolute bottom-[-150px] left-0 right-0 mx-auto h-auto w-[min(780px,100vw)] max-h-none max-w-none object-contain rounded-[14px] border border-sky-200/20 shadow-2xl transition-all duration-700 ease-out"
    :class="$clicks >= 1 ? 'translate-y-0 opacity-100' : 'translate-y-[110%] opacity-0'"
    src="./public/home.png"
    alt="御小龙首页截图"
  />
</div>

<!--
我们来介绍一下御小龙。这是我们打造的一个更符合日常工作习惯和需求的 AI 工作台。

注意，它不是一个聊天工具，而是一个工作台。你给它任务、资料、要求，它帮你完成工作。
-->

---
layout: center
glow: bottom
---

# 今天的路线 {.font-600!}

<div class="grid grid-cols-5 gap-4 mt-8 text-center">
  <div class="p-4 rounded-lg bg-sky-500/10 border border-sky-500/20">
    <div class="text-3xl mb-2">1</div>
    <div class="text-sm op80">基础使用</div>
  </div>
  <div class="p-4 rounded-lg bg-sky-500/10 border border-sky-500/20">
    <div class="text-3xl mb-2">2</div>
    <div class="text-sm op80">Office 文件</div>
  </div>
  <div class="p-4 rounded-lg bg-sky-500/10 border border-sky-500/20">
    <div class="text-3xl mb-2">3</div>
    <div class="text-sm op80">钉钉协同</div>
  </div>
  <div class="p-4 rounded-lg bg-sky-500/10 border border-sky-500/20">
    <div class="text-3xl mb-2">4</div>
    <div class="text-sm op80">知识库</div>
  </div>
  <div class="p-4 rounded-lg bg-sky-500/10 border border-sky-500/20">
    <div class="text-3xl mb-2">5</div>
    <div class="text-sm op80">技能</div>
  </div>
</div>

<div class="mt-8 text-sm op60 text-center">
先会用 → 再处理文档 → 再进入协同 → 再沉淀知识 → 最后复用技能
</div>

<!--
今天的培训按照这个顺序来：先学会基础操作，再学文档处理，然后是钉钉协同，接着是知识库，最后是技能。

这个顺序是按照大家实际工作中的使用频率和学习难度来排的。先把最基础的搞定，后面的内容都是在基础之上叠加的。
-->

---
layout: fact
---

# 模块一：基础使用 {.font-600! .text-theme!}

<div class="text-lg op60 mt-2">如何完成第一个任务</div>

<!--
好，我们进入第一个模块：基础使用。

这个模块的目标是让大家能独立完成一个最简单的工作项
-->

---
glow: left
---

# 认识工作台界面 {.font-600!}

<div class="grid grid-cols-2 gap-4 mt-6 text-sm">
  <div v-click class="p-3 rounded bg-blue-500/10 border border-blue-500/20">
    <div class="font-500 text-blue-300 mb-1">左侧导航</div>
    <div class="op70">新建工作项、技能、插件、知识库、设置</div>
  </div>
  <div v-click class="p-3 rounded bg-green-500/10 border border-green-500/20">
    <div class="font-500 text-green-300 mb-1">项目列表</div>
    <div class="op70">按项目目录管理任务记录</div>
  </div>
  <div v-click class="p-3 rounded bg-orange-500/10 border border-orange-500/20">
    <div class="font-500 text-orange-300 mb-1">中间对话区</div>
    <div class="op70">查看任务过程和最终结果</div>
  </div>
  <div v-click class="p-3 rounded bg-purple-500/10 border border-purple-500/20">
    <div class="font-500 text-purple-300 mb-1">底部输入区</div>
    <div class="op70">下达任务、上传附件、选择模型和权限</div>
  </div>
</div>

<!--
工作台分四个主要区域。左边是导航，中间是对话区，底部是输入区，右边还有辅助面板。

大家不需要记住所有功能，先熟悉这四个区域的位置就行。
-->

---

# 新建第一个工作项 {.font-600!}

<v-clicks>

1. 点击「新建工作项」
2. 选择当前目录
3. 输入任务目标
4. 根据需要添加附件或引用文件
5. 选择模型和思考强度
6. 选择权限模式
7. 发送任务

</v-clicks>

<!--
新建工作项就像创建一个新的工作空间。你告诉它你要做什么，给它需要的资料，它就开始帮你干活了。

我们来实际操作一下。
-->

---

# 如何写清楚任务 {.font-600!}

<div class="grid grid-cols-2 gap-6 mt-4">
  <div v-click>
    <div class="text-green-400 font-500 mb-2">✅ 好的任务描述</div>

```text
请帮我整理这份会议纪要，输出：
1. 关键结论
2. 待办事项（表格：负责人、
   截止时间、优先级）
3. 风险提醒

没有明确负责人的标记为"待确认"。
```

  </div>
  <div v-click>
    <div class="text-red-400 font-500 mb-2">❌ 差的任务描述</div>

```text
帮我弄一下这个文档。
```

<div class="text-sm op60 mt-4">目标不清、资料不清、格式不清</div>
  </div>
</div>

<!--
写任务有一个核心原则：说清楚你要什么。

左边这个例子，目标明确、格式明确、对不确定信息也有要求。右边这个就太模糊了，AI 不知道你想要什么结果。
-->

---

# 任务描述模板 {.font-600!}

```text
我要完成：[具体目标]
背景是：[业务背景、使用场景、受众]
资料在：[附件、知识库、项目文件]
希望输出：[格式、字数、语言风格]
限制条件：[不能编造、必须基于资料]
请特别注意：[风险点、敏感点]
```

<div v-click class="mt-6 p-3 rounded bg-yellow-500/10 border border-yellow-500/20 text-sm">
  <span class="text-yellow-400">提示：</span>不需要每次都写这么完整，但目标和输出格式一定要说清楚
</div>

<!--
这是一个推荐的模板。不需要每次都填满，但至少要把目标和期望的输出格式说清楚。资料越充分，结果越准确。
-->

---

# 输入区能力 {.font-600!}

| 能力 | 用法 | 适用场景 |
| --- | --- | --- |
| 普通文本 | 直接输入 | 简单写作、总结 |
| 附件上传 | 点击附件按钮 | 临时分析文件 |
| 拖拽文件 | 拖入输入区 | 快速补充资料 |
| `@` 引用 | 输入 `@` 选择文件 | 指定处理哪个文件 |
| `/` 调用 | 输入 `/` 选择能力 | 调用技能或工具 |

<!--
输入区有这些能力。最常用的是直接输入文本、上传附件、和用 @ 引用文件。大家先记住这三个就够了。
-->

---

# 权限确认 {.font-600!}

<div class="mt-4 op80">当 AI 要执行高风险操作时，会弹出权限确认：</div>

<div class="grid grid-cols-3 gap-4 mt-6 text-center text-sm">
  <div v-click class="p-4 rounded bg-green-500/10 border border-green-500/20">
    <div class="text-2xl mb-2">🛡️</div>
    <div class="font-500">拒绝</div>
    <div class="op60 mt-1">看不懂就拒绝</div>
  </div>
  <div v-click class="p-4 rounded bg-yellow-500/10 border border-yellow-500/20">
    <div class="text-2xl mb-2">✋</div>
    <div class="font-500">允许一次</div>
    <div class="op60 mt-1">推荐默认选择</div>
  </div>
  <div v-click class="p-4 rounded bg-red-500/10 border border-red-500/20">
    <div class="text-2xl mb-2">⚠️</div>
    <div class="font-500">始终允许</div>
    <div class="op60 mt-1">新手不建议使用</div>
  </div>
</div>

<!--
权限确认是一个安全机制。当 AI 要做一些可能有风险的操作时，会先问你。

记住三个原则：看不懂就拒绝，能允许一次就不要始终允许，新手不要用完全访问模式。
-->

---
layout: fact
---

# 模块二：Office 文件处理 {.font-600! .text-theme!}

<div class="text-lg op60 mt-2">读取、总结、提取、改写、分析</div>

<!--
接下来我们进入最实用的部分：Office 文件处理。这是大家日常工作中最高频的场景。
-->

---

# 三种处理方式 {.font-600!}

<div class="grid grid-cols-3 gap-4 mt-6 text-center">
  <div v-click class="p-4 rounded bg-blue-500/10 border border-blue-500/20">
    <div class="text-3xl mb-2">📎</div>
    <div class="font-500">上传附件</div>
    <div class="text-sm op60 mt-2">一次性分析资料</div>
  </div>
  <div v-click class="p-4 rounded bg-green-500/10 border border-green-500/20">
    <div class="text-3xl mb-2">@</div>
    <div class="font-500">引用文件</div>
    <div class="text-sm op60 mt-2">基于项目目录中的文件</div>
  </div>
  <div v-click class="p-4 rounded bg-purple-500/10 border border-purple-500/20">
    <div class="text-3xl mb-2">✂️</div>
    <div class="font-500">片段引用</div>
    <div class="text-sm op60 mt-2">只处理文件中的关键部分</div>
  </div>
</div>

<!--
处理文件有三种方式。上传附件适合临时分析，@ 引用适合项目里已有的文件，片段引用适合只处理文件中的某一段。
-->

---

# Word / PDF 处理示例 {.font-600!}

```text
请阅读这份文档，输出：
1. 文档核心目的
2. 关键要求
3. 需要执行的事项
4. 存在疑问或待确认内容

不要补充文档中没有的信息。
```

<div v-click class="mt-4 text-sm op70">
适用：总结长文档、提炼重点、改写通知、生成摘要、提取合同条款
</div>

<!--
Word 和 PDF 是最常见的。这个示例展示了一个标准的文档分析任务。

注意最后一句"不要补充文档中没有的信息"，这很重要，防止 AI 自己编造内容。
-->

---

# Excel 处理示例 {.font-600!}

```text
请分析这个 Excel 表格，输出：
1. 数据整体结论
2. 明显异常项
3. 可能原因
4. 建议后续跟进事项

如果某些结论需要更多背景，请标记为"待确认"。
```

<div v-click class="mt-4 p-3 rounded bg-red-500/10 border border-red-500/20 text-sm">
  <span class="text-red-400">⚠️ 注意：</span>AI 对表格的分析应人工复核关键数字，财务数据不能直接使用
</div>

<!--
Excel 分析也很常用。但要注意，AI 给出的数字结论一定要人工复核。特别是财务数据、客户数据，不能直接拿来用。
-->

---

# 常见文档任务模板 {.font-600!}

<div class="grid grid-cols-2 gap-4 mt-4 text-sm">
  <div v-click class="p-3 rounded bg-blue-500/10 border border-blue-500/20">
    <div class="font-500 text-blue-300 mb-1">会议纪要 → 待办表格</div>
    <div class="op70">事项、负责人、截止时间、优先级；不明确的标"待确认"</div>
  </div>
  <div v-click class="p-3 rounded bg-green-500/10 border border-green-500/20">
    <div class="font-500 text-green-300 mb-1">长文档 → 一页摘要</div>
    <div class="op70">背景、核心结论、关键数据、风险、下一步建议</div>
  </div>
  <div v-click class="p-3 rounded bg-orange-500/10 border border-orange-500/20">
    <div class="font-500 text-orange-300 mb-1">材料 → 汇报稿</div>
    <div class="op70">5 分钟汇报稿，逻辑清晰，不确定信息标"待确认"</div>
  </div>
  <div v-click class="p-3 rounded bg-purple-500/10 border border-purple-500/20">
    <div class="font-500 text-purple-300 mb-1">表格 → 异常分析</div>
    <div class="op70">找异常项、分析原因、建议处理动作</div>
  </div>
</div>

<!--
这四个是最常用的文档处理模板。大家可以根据自己的需求调整。
-->

---
layout: fact
---

# 模块三：钉钉协同 {.font-600! .text-theme!}

<div class="text-lg op60 mt-2">把 AI 结果接入企业协同场景</div>

<!--
第三个模块是钉钉协同。我们已经有了钉钉助手插件，可以把 AI 的处理结果直接接入钉钉的工作流。
-->

---

# 钉钉助手定位 {.font-600!}

<v-clicks>

- 钉钉官方开源的跨平台工具
- 统一封装钉钉工作台能力（待办、审批、消息、日历…）
- 支持结构化 JSON 输出
- 面向企业管理员提供安全鉴权与最小权限访问

</v-clicks>

<div v-click class="mt-6 p-3 rounded bg-orange-500/10 border border-orange-500/20 text-sm">
  <span class="text-orange-400">💡 定位：</span>不是聊天能力，而是连接钉钉工作流的桥梁
</div>

<!--
钉钉助手不是让你跟钉钉聊天，而是把钉钉的工作台能力接入到御小龙里。

比如生成待办、写审批说明、整理群公告，这些都可以通过钉钉助手来完成。
-->

---

# 钉钉协同场景 {.font-600!}

<div class="grid grid-cols-2 gap-3 mt-4 text-sm">
  <div v-click class="p-3 rounded bg-blue-500/10">会议纪要 → 钉钉待办草稿</div>
  <div v-click class="p-3 rounded bg-green-500/10">项目进展 → 群公告</div>
  <div v-click class="p-3 rounded bg-orange-500/10">审批材料 → 审批说明</div>
  <div v-click class="p-3 rounded bg-purple-500/10">任务汇总 → 同步消息</div>
  <div v-click class="p-3 rounded bg-pink-500/10">工作内容 → 日报周报</div>
  <div v-click class="p-3 rounded bg-cyan-500/10">客户跟进 → 可发送格式</div>
</div>

<div v-click class="mt-4 p-3 rounded bg-red-500/10 border border-red-500/20 text-sm">
  <span class="text-red-400">⚠️ 重要：</span>重要消息先生成草稿，人工确认后再发送
</div>

<!--
这些是最常见的钉钉协同场景。核心思路是：先让 AI 帮你整理内容，再通过钉钉助手发送到对应的工作流里。

重要消息一定要先生成草稿，人工确认后再发送。
-->

---
layout: fact
---

# 模块四：知识库 {.font-600! .text-theme!}

<div class="text-lg op60 mt-2">让资料从一次性使用变成长期沉淀</div>

<!--
第四个模块是知识库。知识库的核心价值是：把你的资料沉淀下来，以后可以反复查询，不用每次都重新上传。
-->

---

# 知识库 vs 附件 {.font-600!}

<div class="grid grid-cols-2 gap-6 mt-6">
  <div v-click class="p-4 rounded bg-gray-500/10 border border-gray-500/20">
    <div class="font-500 mb-3">📎 附件</div>
    <ul class="text-sm op70 space-y-2">
      <li>一次性任务</li>
      <li>临时文件、单次分析</li>
      <li>随工作项使用</li>
    </ul>
  </div>
  <div v-click class="p-4 rounded bg-purple-500/10 border border-purple-500/20">
    <div class="font-500 text-purple-300 mb-3">📚 知识库</div>
    <ul class="text-sm op70 space-y-2">
      <li>长期沉淀</li>
      <li>制度、文档、FAQ、项目资料</li>
      <li>导入后可反复查询</li>
    </ul>
  </div>
</div>

<!--
附件是一次性的，用完就没了。知识库是长期的，导入一次，以后随时可以查。

公司制度、产品文档、培训材料这些，都应该放到知识库里。
-->

---

# 基于知识库提问 {.font-600!}

```text
请先查知识库，再回答下面的问题。
如果知识库没有依据，请明确说明
"知识库中没有找到依据"，不要自行编造。
```

<v-clicks>

- 适合：制度问答、产品文档查询、项目资料检索
- 关键原则：要求 AI 基于知识库回答，没有依据就说没有
- 不适合放入：未脱敏客户信息、密钥密码、高度临时的文件

</v-clicks>

<!--
基于知识库提问时，一定要加上这句话：如果知识库没有依据，请明确说明。

这样可以防止 AI 编造答案。
-->

---
layout: fact
---

# 模块五：技能 {.font-600! .text-theme!}

<div class="text-lg op60 mt-2">让重复工作形成可复用流程</div>

<!--
最后一个模块是技能。技能就是把你经常做的事情，变成一个可以一键调用的工作方法。
-->

---

# 技能 vs 普通提示词 {.font-600!}

<div class="grid grid-cols-2 gap-6 mt-6">
  <div v-click class="p-4 rounded bg-gray-500/10 border border-gray-500/20">
    <div class="font-500 mb-3">普通提示词</div>
    <ul class="text-sm op70 space-y-2">
      <li>每次手写要求</li>
      <li>依赖用户描述，结果不稳定</li>
      <li>适合临时任务</li>
    </ul>
  </div>
  <div v-click class="p-4 rounded bg-purple-500/10 border border-purple-500/20">
    <div class="font-500 text-purple-300 mb-3">⚡ 技能</div>
    <ul class="text-sm op70 space-y-2">
      <li>预设工作方法</li>
      <li>输出更稳定</li>
      <li>适合重复任务，团队统一沉淀</li>
    </ul>
  </div>
</div>

<!--
技能和普通提示词的区别在于：普通提示词每次都要重新写，结果不稳定。技能是预设好的工作方法，输出更稳定，适合团队统一使用。
-->

---

# 安装和调用技能 {.font-600!}

<div class="grid grid-cols-2 gap-6 mt-4">
  <div v-click>
    <div class="font-500 mb-3">安装</div>
    <ol class="text-sm op80 space-y-2">
      <li>打开左侧「技能」</li>
      <li>进入「技能市场」</li>
      <li>搜索并安装</li>
      <li>确认已启用</li>
    </ol>
  </div>
  <div v-click>
    <div class="font-500 mb-3">调用</div>
    <ol class="text-sm op80 space-y-2">
      <li>在输入区输入 <code>/</code></li>
      <li>从列表选择技能</li>
      <li>补充任务目标和资料</li>
      <li>发送工作项</li>
    </ol>
  </div>
</div>

<!--
安装技能在技能市场里找，调用技能在输入区输入斜杠就行。非常简单，大家一会儿可以实际操作一下。
-->

---
layout: fact
---

# 安全规范 {.font-600! .text-theme!}

<div class="text-lg op60 mt-2">三个"不能"</div>

<!--
最后我们讲一下安全规范。这部分很重要，请大家记住三个"不能"。
-->

---

# 三个"不能" {.font-600!}

<div class="space-y-4 mt-4">
  <div v-click class="p-4 rounded bg-red-500/10 border border-red-500/20">
    <div class="font-500 text-red-300">🚫 不能输入敏感信息</div>
    <div class="text-sm op70 mt-1">客户隐私、未脱敏合同、密钥密码、未授权内部资料</div>
  </div>
  <div v-click class="p-4 rounded bg-orange-500/10 border border-orange-500/20">
    <div class="font-500 text-orange-300">🚫 不能盲目授权</div>
    <div class="text-sm op70 mt-1">看不懂就拒绝，能允许一次就不要始终允许</div>
  </div>
  <div v-click class="p-4 rounded bg-yellow-500/10 border border-yellow-500/20">
    <div class="font-500 text-yellow-300">🚫 不能直接发布 AI 结果</div>
    <div class="text-sm op70 mt-1">数字、日期、姓名、政策、金额必须人工复核</div>
  </div>
</div>

<!--
第一，不能输入敏感信息。第二，不能盲目授权，看不懂的操作就拒绝。第三，不能直接发布 AI 的结果，关键信息必须人工复核。
-->

---
layout: center
glow: bottom
---

# 总结 {.font-600!}

<div class="grid grid-cols-5 gap-3 mt-8 text-center text-sm">
  <div class="p-3 rounded bg-sky-500/10 border border-sky-500/20">
    <div class="text-xl mb-1 text-theme">1</div>
    <div>开工作项</div>
  </div>
  <div class="p-3 rounded bg-sky-500/10 border border-sky-500/20">
    <div class="text-xl mb-1 text-theme">2</div>
    <div>给资料</div>
  </div>
  <div class="p-3 rounded bg-sky-500/10 border border-sky-500/20">
    <div class="text-xl mb-1 text-theme">3</div>
    <div>处理文档</div>
  </div>
  <div class="p-3 rounded bg-sky-500/10 border border-sky-500/20">
    <div class="text-xl mb-1 text-theme">4</div>
    <div>进入协同</div>
  </div>
  <div class="p-3 rounded bg-sky-500/10 border border-sky-500/20">
    <div class="text-xl mb-1 text-theme">5</div>
    <div>沉淀复用</div>
  </div>
</div>

<div class="mt-8 text-center text-lg op80">
先会用 → 再处理文档 → 再协同 → 再沉淀 → 再复用
</div>

<!--
最后总结一下。御小龙的使用路径就是这五步：先开工作项，再给资料，再处理文档，再进入协同，最后沉淀复用。

希望大家从今天开始，把御小龙用起来，让它真正帮助你的日常工作。谢谢大家！
-->

---
layout: intro
class: pb-5
growX: 50
growY: 120
---

<div class="flex items-center justify-center gap-12 h-full">
  <div class="text-center">
    <h1>谢谢大家!</h1>
    <div class="op70">PPT 在 <a href="https://elonehoo.me/talks">https://elonehoo.me/talks</a></div>
  </div>
  <img src="./qrcode.png" class="h-84 w-auto object-contain">
</div>
