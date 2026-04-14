---
title: "Wiki Schema"
created: 2026-04-14
updated: 2026-04-14
type: meta
domain: 线性代数 / Linear Algebra (LADR 4th Ed.)
---

# Wiki Schema — 线性代数知识库

## Domain
本书库消化《线性代数应该这样学》（Linear Algebra Done Right, 4th Edition, Sheldon Axler）的学习笔记，以**线性映射**为核心视角串起向量空间、算子理论、谱定理、奇异值分解和行列式。

> 与传统从矩阵出发的线性代数不同，LADR 从抽象向量空间和线性映射出发，特征值和分解定理是全书高潮。

## Source
- 教材：《线性代数应该这样学（第四版）》，Sheldon Axler
- 简称：LADR

## Conventions

### 文件命名
- 使用 kebab-case：中文标题转为拼音或直接用英文术语
  - 好：`vector-space.md`、`eigenvalue.md`、`inner-product-space.md`
  - 坏：`向量空间.md`、`特征值与特征向量.md`
- 章节笔记：`ch1-vector-space/1A-rn-cn.md`（尽量与教材章节对齐）

### Frontmatter（必填）
```yaml
---
title: Page Title
created: YYYY-MM-DD
updated: YYYY-MM-DD
type: concept | entity | theorem | proof | problem | summary
chapter: 1-9  # LADR 章节号，可选
tags: [from taxonomy below]
sources: [LADR]
|related: [[vector-space]], [[linear-map]]
---
```

### Wikilinks 规则
- 每个页面至少 **2 个外向 wikilinks**
- Wiki 层内引用：直接用 `[[vector-space]]`（目录内文件名无扩展名）
- 跨目录引用：用 `[[第1章 向量空间 — 章节汇总]]`（引用原笔记）
- 引用原笔记（vault notes）：用 `[[第1章 向量空间 — 章节汇总]]`（Obsidian 自动解析）

### 页面大小
- 单页不超过 **200 行**，超出的拆分为子页面
- 章节汇总页（`第X章 — 章节汇总`）作为 hub，负责串起整章内容

### 概念层级
- **axiom/def** — 公理或定义（不可证明，最原始的概念）
- **theorem** — 定理（核心结果）
- **proposition/lemma** — 命题/引理（辅助结果）
- **proof** — 证明（独立存储，方便引用）
- **problem** — 例题/习题
- **summary** — 章节汇总

## Tag Taxonomy

### 按类型
- `concept` — 核心概念（向量空间、子空间、线性映射…）
- `theorem` — 重要定理
- `proof` — 证明技术
- `problem` — 例题/习题

### 按主题
- `vector-space` — 向量空间理论
- `linear-map` — 线性映射与矩阵
- `eigenvalue` — 特征值与谱理论
- `inner-product` — 内积空间
- `operator-theory` — 算子理论
- `jordan-form` — 若当型
- `svd` — 奇异值分解
- `determinant` — 行列式
- `tensor` — 张量积

### 按章节（LADR）
- `ch1`、`ch2`、`ch3`、`ch4`、`ch5`、`ch6`、`ch7`、`ch8`、`ch9`

### 按难度
- `foundation` — 第1-2章基础
- `core` — 第3-4章核心
- `advanced` — 第5-8章进阶
- `mastery` — 第9章及综合

## Page Thresholds

| 情况 | 操作 |
|------|------|
| 某概念/定理出现在 2+ 笔记中 | 考虑建立独立概念/定理页 |
| 某笔记超过 200 行 | 拆分为子主题页 |
| 某概念跨越多个章节 | 建立跨章节汇总 link，在各章节页引用 |
| 内容已被更完整的笔记覆盖 | 归档到 `_archive/`，保留入口指向新页 |

## Update Policy

当新信息与现有内容矛盾时：
1. 检查时间戳 — 以教材（LADR）为准，笔记的补充内容服从教材结论
2. 标注矛盾：`> [!contradiction]` 提示框
3. 共存两条记录，附上不同来源

## Directory Structure

```
Wiki/
├── SCHEMA.md              # 本文件 — 规范定义
├── index.md               # 内容目录
├── log.md                 # 操作日志
├── _archive/              # 已归档页面
│
├── concepts/              # 核心概念页（跨章节主题）
│   ├── vector-space.md
│   ├── linear-map.md
│   ├── eigenvalue.md
│   ├── inner-product-space.md
│   ├── operator.md
│   ├── determinant.md
│   └── tensor-product.md
│
├── theorems/              # 重要定理页
│   ├── rank-nullity.md    # 维数公式（基本定理）
│   ├── spectral-theorem.md
│   ├── svd-theorem.md
│   └── jordan-form-theorem.md
│
└── notes/                 # 消化后的章节笔记（从 ../线性代数/notes/ 迁移）
    ├── ch1-vector-space/
    ├── ch2-finite-dim/
    ├── ch3-linear-map/
    ├── ch4-polynomial/
    ├── ch5-operator-c/
    ├── ch6-inner-product/
    ├── ch7-operator-ip/
    ├── ch8-operator-c-advanced/
    └── ch9-multilinear/
```

## Style Guide

- 数学符号使用 LaTeX inline `$...$` 或 display `$$...$$`
- 重要结论用 `> [!abstract]` 提示框
- 关键定理用 `> [!theorem]` 提示框
- 证明用 `> [!proof]` 提示框
- Wikidata 式定义：先一句话概括，再详细定义
