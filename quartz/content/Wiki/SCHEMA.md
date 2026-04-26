---
title: "Wiki Schema"
created: 2026-04-14
updated: 2026-04-18
type: meta
domain: 数学笔记 Wiki — 多学科知识库
---

# Wiki Schema — 数学笔记 Wiki

## Domain

本知识库涵盖多个数学学科，以**跨章节核心概念**和**重要定理**为 Wiki 层内容，原笔记按章节保留在各学科目录下。

> Wiki 层不替代章节笔记，而是从笔记中提炼跨章节主题，形成独立的概念页和定理页，方便快速查阅和知识关联。

### 当前学科

| 学科 | 教材 | Wiki 页面数 |
|------|------|------------|
| 线性代数 | 《线性代数应该这样学》（LADR 4th Ed., Sheldon Axler） | 18（14 concepts + 4 theorems） |
| 概率论与统计 | 《概率论与数理统计教程》（茆诗松等） | 13（10 concepts + 3 theorems） |

## Source

- 线性代数：《线性代数应该这样学（第四版）》，Sheldon Axler（简称 LADR）
- 概率论与统计：《概率论与数理统计教程》，茆诗松等（简称 茆诗松）

## Conventions

### 文件命名
- 使用 kebab-case：中文标题转为拼音或直接用英文术语
  - 好：`vector-space.md`、`eigenvalue.md`、`inner-product-space.md`
  - 坏：`向量空间.md`、`特征值与特征向量.md`
- 章节笔记：与教材章节对齐（如 `1A Rⁿ 和 Cⁿ.md`、`2.1 随机变量及其分布.md`）

### Frontmatter（必填）
```yaml
---
title: Page Title
created: YYYY-MM-DD
updated: YYYY-MM-DD
type: concept | entity | theorem | proof | problem | summary
chapter: 1-9  # 章节号，可选
tags: [from taxonomy below]
sources: [LADR] 或 [茆诗松]
related: [[vector-space]], [[linear-map]]
---
```

### Wikilinks 规则
- 每个页面至少 **2 个外向 wikilinks**
- Wiki 层内引用：直接用 `[[vector-space]]`（Quartz shortest 策略自动解析）
- 跨目录引用：用 `[[第1章 向量空间 — 章节汇总]]`（引用原笔记）

### 页面大小
- 单页不超过 **200 行**，超出的拆分为子页面
- 章节汇总页作为 hub，负责串起整章内容

### 概念层级
- **axiom/def** — 公理或定义（不可证明，最原始的概念）
- **theorem** — 定理（核心结果）
- **proposition/lemma** — 命题/引理（辅助结果）
- **proof** — 证明（独立存储，方便引用）
- **problem** — 例题/习题
- **summary** — 章节汇总

## Tag Taxonomy

### 按类型
- `concept` — 核心概念
- `theorem` — 重要定理
- `proof` — 证明技术
- `problem` — 例题/习题

### 按学科
- `线性代数` — 线性代数
- `概率论与统计` — 概率论与统计

### 按主题（线性代数）
- `vector-space` — 向量空间理论
- `linear-map` — 线性映射与矩阵
- `eigenvalue` — 特征值与谱理论
- `inner-product` — 内积空间
- `operator-theory` — 算子理论
- `jordan-form` — 若当型
- `svd` — 奇异值分解
- `determinant` — 行列式
- `tensor` — 张量积

### 按主题（概率论与统计）
- `random-event` — 随机事件与概率
- `random-variable` — 随机变量与分布
- `multivariate` — 多维随机变量
- `limit-theorem` — 极限定理
- `sampling` — 统计量与抽样分布
- `estimation` — 参数估计
- `hypothesis-testing` — 假设检验
- `regression` — 方差分析与回归

### 按章节（线性代数 LADR）
- `ch1`、`ch2`、`ch3`、`ch4`、`ch5`、`ch6`、`ch7`、`ch8`、`ch9`

### 按章节（概率论与统计）
- `ch1`、`ch2`、`ch3`、`ch4`、`ch5`、`ch6`、`ch7`、`ch8`

### 按难度
- `foundation` — 基础内容
- `core` — 核心内容
- `advanced` — 进阶内容
- `mastery` — 综合内容

## Page Thresholds

| 情况 | 操作 |
|------|------|
| 某概念/定理出现在 2+ 笔记中 | 考虑建立独立概念/定理页 |
| 某笔记超过 200 行 | 拆分为子主题页 |
| 某概念跨越多个章节 | 建立跨章节汇总 link，在各章节页引用 |
| 内容已被更完整的笔记覆盖 | 归档到 `_archive/`，保留入口指向新页 |

## Update Policy

当新信息与现有内容矛盾时：
1. 检查时间戳 — 以对应教材为准，笔记的补充内容服从教材结论
2. 标注矛盾：`> [!contradiction]` 提示框
3. 共存两条记录，附上不同来源

## Directory Structure

```
Content/
├── index.md                  # 首页 — 课程导航
├── Wiki/
│   ├── SCHEMA.md             # 本文件 — 规范定义
│   ├── index.md              # 多学科 Wiki 总目录
│   └── log.md                # 操作日志（append-only）
│
├── 线性代数/
│   ├── index.md              # 线性代数知识库总览
│   ├── concepts/             # 核心概念页（14 个）
│   │   ├── vector-space.md
│   │   ├── subspace.md
│   │   ├── span.md
│   │   ├── linear-independence.md
│   │   ├── basis-and-dimension.md
│   │   ├── linear-map.md
│   │   ├── matrix.md
│   │   ├── operator.md
│   │   ├── eigenvalue.md
│   │   ├── diagonalization.md
│   │   ├── inner-product-space.md
│   │   ├── gram-schmidt.md
│   │   ├── determinant.md
│   │   └── tensor-product.md
│   ├── theorems/             # 重要定理页（4 个）
│   │   ├── rank-nullity-theorem.md
│   │   ├── spectral-theorem.md
│   │   ├── svd-theorem.md
│   │   └── jordan-form-theorem.md
│   └── notes/                # 章节笔记（按 LADR 章节组织）
│       ├── 第1章 向量空间/
│       ├── 第2章 有限维向量空间/
│       ├── ...
│       └── 第9章 多重线性代数和行列式/
│
├── 概率论与统计/
│   ├── index.md              # 概率论与统计知识库总览
│   ├── concepts/             # 核心概念页（10 个）
│   │   ├── 随机变量.md
│   │   ├── 独立性.md
│   │   ├── 条件概率与条件期望.md
│   │   ├── 常用离散分布.md
│   │   ├── 常用连续分布.md
│   │   ├── 正态分布.md
│   │   ├── 协方差与相关系数.md
│   │   ├── 统计量与抽样分布.md
│   │   ├── 参数估计.md
│   │   └── 假设检验.md
│   ├── theorems/             # 重要定理页（3 个）
│   │   ├── 大数定律.md
│   │   ├── 中心极限定理.md
│   │   └── 三大抽样分布.md
│   └── notes/                # 章节笔记（按茆诗松章节组织）
│       ├── 第01章 随机事件与概率/
│       ├── 第02章 随机变量及其分布/
│       ├── ...
│       └── 第08章 方差分析与回归分析/
```

## Style Guide

- 数学符号使用 LaTeX inline `$...$` 或 display `$$...$$`
- 重要结论用 `> [!abstract]` 提示框
- 关键定理用 `> [!theorem]` 提示框
- 证明用 `> [!proof]` 提示框
- Wikidata 式定义：先一句话概括，再详细定义
