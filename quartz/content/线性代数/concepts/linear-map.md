---
title: "线性映射"
created: 2026-04-14
updated: 2026-04-14
type: concept
chapter: 3
tags: [concept, linear-map, core, ch3]
sources: [LADR]
related: [[matrix], [rank-nullity-theorem], [eigenvalue], [operator]]
---

# 线性映射（Linear Map）

## 一句话定义
线性映射是保持向量加法和标量乘法的函数：$T(u+v) = Tu + Tv$，$T(\lambda v) = \lambda(Tv)$。它是向量空间之间的"结构保持映射"。

## 形式定义

设 $T: V \to W$ 为映射。$T$ 是**线性的**，当且仅当：
- $\forall u, v \in V,\ T(u+v) = Tu + Tv$
- $\forall v \in V,\ \forall \lambda \in \mathbb{F},\ T(\lambda v) = \lambda(Tv)$

等价于：$T(au + bv) = aTu + bTv$ 对所有 $a, b$ 成立。

### 线性映射引理（定理 3.4）

> **基上的值唯一确定线性映射**。若 $v_1,\ldots,v_n$ 是 $V$ 的基，则每个 $Tv_k$ 的取值唯一决定一个线性映射 $T$。

**意义**：这是整个线性代数的起点——要定义一个线性映射，只需指定基向量去向即可。

## 核心概念

### 零空间（Null Space / Kernel）

$$\text{null}\ T = \{v \in V : Tv = 0\}$$

- 是 $V$ 的子空间（定理 3.12）
- $\text{null}\ T = \{0\} \Leftrightarrow T$ 单射

### 值域（Range / Image）

$$\text{range}\ T = \{Tv : v \in V\}$$

- 是 $W$ 的子空间（定理 3.13）
- $\text{range}\ T = W \Leftrightarrow T$ 满射

## 最重要的定理：维数公式 / 线性映射基本定理（定理 3.21）

$$T: V \to W \text{ 为线性映射} \Longrightarrow \dim \text{null}\ T + \dim \text{range}\ T = \dim V$$

> 零空间维数 + 值域维数 = 定义域维数。这是全章（乃至全书）最重要的定理，连接了映射的"输入端"和"输出端"。

## 矩阵表示（3C 节）

- **$\mathcal{M}(T)$**（定义 3.31）：第 $k$ 列 $= Tv_k$ 在 $W$ 的基下的坐标
- **矩阵乘法的根本来源**：$\mathcal{M}(ST) = \mathcal{M}(S)\mathcal{M}(T)$（定理 3.43）——矩阵乘法不是任意规定的，而是由复合映射唯一确定的

### 列秩 = 行秩（定理 3.57）

> 矩阵的列秩 = 行秩。这说明"列方向"和"行方向"的维数天然相等，是矩阵最重要的不变量之一。

## 与其他概念的联系

- [[matrix]]：矩阵是线性映射关于特定基的表示——列是基向量的像
- [[rank-nullity-theorem]]：维数公式是线性映射理论的核心
- [[eigenvalue]]：特征值是算子（$V \to V$）的特征，零空间是 $V$ 的子空间
- [[operator]]：算子是线性映射的特殊情况（$V \to V$）

## 章节定位

> 第 3 章是线性代数的"操作手册"。LADR 的核心观点：==先有线性映射，再有矩阵；矩阵只是线性映射的表示，线性映射本身与基的选取无关==。

详见：[[第3章 线性映射 — 章节汇总]]
