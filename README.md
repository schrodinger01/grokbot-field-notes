[![Grok Bot Guide by SpaceX Engineers](guide/cover.png)](guide/grok-bot-guide-by-spacex-engineers.pdf)

# Grok Bot 实地笔记

xAI Grok Bot 团队的三位工程师，用自家的智能体平台，从空仓库出发，在直播里用 72 小时做出并上线了一款产品：[Roshan Sadanani](https://www.linkedin.com/in/roshansadanani)（产品）、[Lauren Tan](https://www.linkedin.com/in/laurenelizabethtan)（工程，PStack 作者）、[Matt Palmer](https://www.linkedin.com/in/matt-palmer)（开发者体验）。这个仓库是我从那三天里抽出来的：一份设计过的指南、可直接丢进你自己智能体里的规则、九份角色手册、一份机器人角色目录，以及一份「什么东西坏了」的日志。

## 这里有什么

| 路径 | 是什么 |
|---|---|
| `AGENTS.md` | 给编码智能体的家规。放到仓库根目录，智能体会读它。 |
| `ANTIPATTERNS.md` | 直播里坏掉的四十件事。每一条：哪里坏了、为什么、由此得出的规则。 |
| `agents/` | `AGENTS.md` 指向的更长参考：验证、编排、技能与例行任务、提示词。 |
| `roster/` | 六十九个智能体角色，一个文件一个。职责、不负责什么、事实从哪来、什么需要批准，以及一段可粘贴的描述。 |
| `playbooks/` | 九场角色工作坊：工程、产品、创始人、销售工程、销售、SDR、支持、售后、市场。每场都有机器人团队、直播里跑过的工作流、提示词、例行任务和数字。 |
| `guide/` | [*Grok Bot Guide by SpaceX Engineers*](guide/grok-bot-guide-by-spacex-engineers.pdf)，一份 24 页 PDF，把三天写成故事：心智模型、软件工厂、案例、失败日志、成本。PDF 仍为英文原版。 |
| `reference/` | 两份短文：`ECONOMICS.md`，每一项被引用的成本和指标，并附上它支撑的规则；`PRODUCT.md`，Grok Bot 里会改变你如何设计机器人的部分：记忆、复制与分享时什么会带过去、隔离、权限。 |
| `notes/` | 按天整理的结构化笔记。产品事实、工作流、提示词、失败、数字、谁是谁。其余内容都从这些笔记长出来。 |

## 从哪里开始

- 现在就要给你的智能体一套规则：把 `AGENTS.md` 复制到仓库根目录。
- 你的智能体总让你去测它们的活：`agents/VERIFICATION.md`。
- 你在设计一支智能体团队，而不是给单个智能体写提示词：`agents/ORCHESTRATION.md`。
- 你想要真正管用的措辞：`agents/PROMPTS.md`。
- 你想要一段可粘贴的机器人职位描述：`roster/`，从 `roster/README.md` 开始。
- 你想按自己的角色搭一套，比如支持或销售：`playbooks/`，从 `playbooks/README.md` 开始。
- 你想知道什么会出错：`ANTIPATTERNS.md`。
- 你想知道花多少钱、token 花在哪：`reference/ECONOMICS.md`。
- 你在决定什么放进记忆、什么放进描述：`reference/PRODUCT.md`。
- 你想看完整故事：[PDF 指南](guide/grok-bot-guide-by-spacex-engineers.pdf)（英文）。
- 你想核对某项说法：`notes/`。

## 一段话版

给每个智能体一件窄的活和一个名字。先建验证闭环，再建第二个智能体。

让智能体先复现 bug，再去修；每件事都附上证据。它错了，写下一般原则，永远不要写下那一次的故事。

每周审计例行任务，因为钱花在频率上。迁移、部署、资金和权限始终留人闸，无论闭环近来运转得多好。

## 许可

MIT。这里的任何内容都可以复制进你自己的仓库。
