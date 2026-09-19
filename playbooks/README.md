# 手册

三天里按角色做的九场工作坊，一场一份文件。每场都是 xAI 员工现场演示他们自己真正在跑的机器人，演示对象是一家演示公司。每份手册结构相同：

**团队**（谁负责什么、接了什么）→ **直播里实际跑过的工作流** → **提示词（转录允许时尽量原文）** → **例行任务与节奏** → **数字** → **他们说自己学到了什么** → **照这个做**（一份搭建清单）。

这是仓库里最能直接照抄的部分。指南把其中六场各压成三段；这里给完整版。

---

## 这九场

| 手册 | 主讲 | 天 | 核心想法 |
|---|---|---|---|
| [`engineering.md`](engineering.md) | Ling Shi，工程师 | 1 | 手册负责人机器人广播标准；P0 只定义一次；夜间清理，有证据才允许合并 |
| [`product-management.md`](product-management.md) | Kevin De Parco + Roshan，产品 | 1 | 数据 → 规格 → 设计 → EM 拆解 → 云端智能体；机器人还会纠正人对漏斗的误读 |
| [`founders.md`](founders.md) | Shub，创始人成功 | 1 | 四个创始人职责对应四个机器人；要复利沉淀，不要用完就扔；审计例行任务频率 |
| [`sales-engineering.md`](sales-engineering.md) | Amrita，现场工程师 | 2 | 仓库专家机器人和竞品机器人在群聊里争论；靠录屏教任务 |
| [`sales.md`](sales.md) | Krista + Mark Wright，GTM | 2 | 用 X 上的个人钩子做开拓；有机器人替你看网络研讨会；从转录更新 CRM |
| [`sdr.md`](sdr.md) | Simon，SDR | 2 | 先做幕僚长，其他都通过它来建；一个平台一个机器人；一支低上下文的子机器人军团 |
| [`customer-support.md`](customer-support.md) | David，用户运营 | 2 | 爬→走→跑；公开 / 内部 / 流程 三分 KB；traces 与 evals 表；每张工单 $0.20–$2 |
| [`post-sales.md`](post-sales.md) | Blake，AI 部署 | 3 | 前面只放一个机器人，其他人不 ping 你；用语音口述冷启动；每周自我改进最多一条建议 |
| [`marketing.md`](marketing.md) | Josh Kim，市场 | 3 | 六个机器人把一场活动做到生产；然后一个 PM 机器人学习你在哪里介入，并接手编排 |

未收录：第 3 天的 RevOps / MarOps 分享（Matthew，「造工具，不要造规则」）。内容在 [`../notes/day-3-notes.md`](../notes/day-3-notes.md)；它不是九场角色工作坊之一。

---

## 每场都在说的事

把九场横着读，同一套规则会换不同说法反复出现。如果只取交集：

1. **一个机器人，一份工作。** 每位主讲都这么说。按岗位说明书来划范围。范围长大了再拆，不要提前拆。
2. **你只跟一个机器人说话。** Simon、Blake、Josh、Ling、Kevin 最后都落到幕僚长 / 对接机器人，专家在后面。唯一的反对派是 Shub——他更喜欢直接跟专家聊——并说这是个人偏好。
3. **专家要通过幕僚长来建**，这样它才知道谁干什么。（Simon 说得最明白。）
4. **只说一次。** Ling 的手册链路、Blake 的自我改进扫描、Shub 的「往下沉一层」、Roshan 的「它想错了，就做成技能」。反复写同一条提示词，说明缺了一条规则或例行任务。
5. **先练声音。** Krista、Simon、Shub、Blake 都会先拿真正发出去的邮件训练语音机器人，再让任何东西外发。Simon 的配方最精确：在辖区内、正反馈、按近因加权，然后反复挑剔，直到没有任何一封看起来像模板。
6. **先草稿，再发送。** David 的爬→走→跑；Blake 的「只出草稿，绝不代发」；Josh 的「从小的、低风险的开始」。写入权限是挣来的。
7. **例行任务：比你想的少。** Krista：一天一两次。Blake：三条每 15 分钟的例行任务，一天就是几百条消息。Shub：每 15 分钟等于一天 100 次；用 webhook。Kevin：空转时什么都别说。
8. **机器人跟机器人说话；真正重要时才 ping 你。** 专家之间的线程不该点亮你的侧边栏。
9. **让它用产品。** Serena 订 Southwest 的机票。ProdBot 自己走一遍站点。Reply 读真实工单。Craig 点进 flyloair.com。机器人自己的电脑就是验证闭环。
10. **让机器人来设计机器人。** 「哪些机器人能帮到你？」（Amrita），「帮我搭一套系统」（Blake），「我们的瓶颈在哪？」（Lauren，在搭建场次里）。

---

## 按名字列出的机器人（跨场次）

笔记里冒出一个名字、想知道它属于哪一场时有用。

| 机器人 | 场次 | 职责 |
|---|---|---|
| Craig / Ling Xixi, Cray, Steve, Hogan1QR, Jenny | engineering | 幕僚长、UI、DevX、infra、手册负责人 |
| Cora, Emily, Einstein/Igor/Nova/Larry/Eileen, Ashley, PMP/Pete, Pixel, Ray | product-management | 幕僚长、EM、工程师、数据、规格、设计、招聘 |
| CloseBot, ProdBot, StockBot, ProtoBot, YapBot, misc | founders | 客户、产品状态、竞品、反馈→PR、声音、垃圾桶 |
| Mimi, Sherlock, Serena Williams, Battle Card Blair, Demo Drake, AI Radar | sales-engineering | 幻灯片、仓库专家、竞品测试，以及 Sherlock 拉起的三个 |
| Olive, PG, Echo, Customer Expert, Engineer | sales | 幕僚长、开拓、现场演示文稿、客户计划、技术回答 |
| Simon-bot, Shakespeare, Web Search, Simon soldiers, Customer, PLG, Ample Market, Company research, Inbox manager | sdr | 幕僚长、邮件声音、调研、军团、VoC、用量、富集、技术栈/组织、分诊 |
| Build, Reply, Alert, Tune | customer-support | infra、工单、升级、自我改进 |
| Gus, Frankie, Wally, Trudy, Scout, Franny, Harbor/Northwind/Brightline | post-sales | 幕僚长、跟进、声音、事实来源、雷达、表单、按客户 |
| market researcher, product marketer, website ops, performance marketer, marketing analyst, project manager | marketing | 活动团队 |

---

## 注意事项

- **Flylo、XAir、Northwind、Harbor、Brightline、Craft** 是演示公司和账户。那些演示里的价格、指标和工单内容是为舞台编的。
- 标成原文的提示词，是自动字幕听到的样子；口述的提示词做了轻度重新标点。从讲述里还原的提示词会标成转述。
- 字幕里的产品名被听乱了（GrokBot / Rockbot / Brockbot / Grock-Bot；「SpaceX AI」）。这里已归一。
- 每个数字都是现场说的，当天就是移动靶。
