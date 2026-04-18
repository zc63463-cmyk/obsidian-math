---
title: "向量空间"
created: 2026-04-14
updated: 2026-04-14
type: concept
chapter: 1
tags: [concept, vector-space, foundation, ch1]
sources: [LADR]
related: [[subspace], [linear-independence], [basis-and-dimension], [span]]
---

# 向量空间（Vector Space）

## 一句话定义
满足 8 条公理的集合，其元素（向量）可以相加并与标量相乘。这套公理体系使同一理论同时适用于几何数组、函数、多项式等无穷多种对象。

## 形式定义

设 $\mathbb{F}$ 为 $\mathbb{R}$ 或 $\mathbb{C}$。向量空间 $V$ 是带有两种运算的集合：

**加法**：$V \times V \to V$，记 $u+v$
**标量乘法**：$\mathbb{F} \times V \to V$，记 $av$

### 八条公理（定义 1.20）

| 公理 | 内容 |
|------|------|
| 加法封闭 | $\forall u, v \in V,\ u + v \in V$ |
| 加法交换 | $u + v = v + u$ |
| 加法结合 | $(u + v) + w = u + (v + w)$ |
| 零向量存在 | $\exists\ 0 \in V,\ u + 0 = u$ |
| 负向量存在 | $\forall u \in V,\ \exists -u \in V,\ u + (-u) = 0$ |
| 标量乘法封闭 | $\forall a \in \mathbb{F},\ \forall v \in V,\ av \in V$ |
| 标量乘法分配律（向量）| $a(u+v) = au + av$ |
| 标量乘法分配律（标量）| $(a+b)u = au + bu$ |
| 标量乘法结合 | $a(bu) = (ab)u$ |
| 标量乘法单位 | $1v = v$ |

## 核心定理

### 基本性质（定理 1.26-1.32）

| 性质 | 内容 |
|------|------|
| 零向量唯一 | 加法恒等元唯一 |
| 负向量唯一 | 每个向量的加法逆元唯一 |
| $0v = 0$ | 标量零乘任何向量得零向量 |
| $a0 = 0$ | 任何数乘零向量得零向量 |
| $(-1)v = -v$ | $-1$ 乘 $v$ 等于 $v$ 的加法逆元 |

## 常见例子

| 例子 | 说明 |
|------|------|
| $\mathbb{F}^n$ | 最基本的具体对象，数组向量 |
| $\mathbb{F}^\infty$ | 无限序列空间 |
| $\mathbb{F}^S$ | $S$ 到 $\mathbb{F}$ 的所有函数（最重要的推广！）|
| $\mathbb{F}[x]_n$ | 次数小于 $n$ 的多项式空间 |
| $C^\infty(\mathbb{R})$ | 光滑函数空间 |

> **关键洞察**：$\mathbb{F}^S$ 当 $S$ 有限时即 $\mathbb{F}^n$，当 $S$ 是区间时是函数空间——这说明 $\mathbb{F}^n$ 不是特殊对象，只是函数空间在有限集上的特例。

## 子空间

$U \subseteq V$ 是子空间 $\Leftrightarrow$ 三条件同时成立（定理 1.34）：
1. $0 \in U$
2. $u, w \in U \Rightarrow u + w \in U$（加法封闭）
3. $u \in U,\ \lambda \in \mathbb{F} \Rightarrow \lambda u \in U$（标量乘法封闭）

> [!tip]
> 其余公理从 $V$ "免费继承"——子空间判别只需验证这三个条件，无需重新验证全部八条。

### 子空间的和与直和

- **和**：$U_1 + U_2 = \{u_1 + u_2 : u_1 \in U_1, u_2 \in U_2\}$，是包含 $U_1 \cup U_2$ 的最小子空间（定理 1.40）
- **直和**：$U_1 \oplus U_2$，要求 $U_1 \cap U_2 = \{0\}$——每个元素有唯一分解（定义 1.41）
- 判别法（定理 1.46）：$U_1 + U_2$ 是直和 $\Leftrightarrow$ $U_1 \cap U_2 = \{0\}$

## 与其他概念的联系

- [[subspace]]：子空间是向量空间的"子系统"——三条件判别法是后续所有子空间证明的基础
- [[span]]：子空间的和 $\text{span}(v_1,\ldots,v_m)$ 是包含给定向量的最小子空间
- [[linear-independence]] 和 [[basis-and-dimension]]：向量空间抽象化的前两步
- $\mathbb{F}^S$ 是连接具体 $\mathbb{F}^n$ 与函数空间的桥梁

## 深层脉络

第 1 章的三节构成**从具体到抽象再到结构**的递进链条：

```
1A: F^n（具体对象）
    ↓ 提取共同性质
1B: 向量空间八条公理（抽象定义）
    ↓ 研究子结构
1C: 子空间（子结构）
```

**公理化方法的意义**：一旦证明某定理对"向量空间"成立，它就对所有满足八条公理的对象自动成立——一套理论，处处适用。

### 跨章节预告

| 后续章节 | 直和的应用 |
|---------|-----------|
| 第 2 章 | 基将空间分解为一维子空间的直和 |
| 第 5 章 | 特征空间分解 $V = E(\lambda_1,T) \oplus \cdots \oplus E(\lambda_m,T)$ |
| 第 7 章 | 谱定理：自伴算子的特征向量构成正交直和 |
| 第 8 章 | 广义特征空间分解 $V = G(\lambda_1,T) \oplus \cdots \oplus G(\lambda_m,T)$ |

## 章节定位

> 第 1 章是全书的起点。LADR 的核心思想：==从向量空间出发，线性映射是主角，矩阵只是表示工具==。

详见：[[第1章 向量空间 — 章节汇总]]
