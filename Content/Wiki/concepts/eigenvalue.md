---
title: "特征值与特征向量"
created: 2026-04-14
updated: 2026-04-14
type: concept
chapter: 5
tags: [concept, eigenvalue, operator-theory, advanced, ch5]
sources: [LADR]
related: [[operator], [diagonalization], [spectral-theorem], [jordan-form-theorem]]
---

# 特征值与特征向量（Eigenvalue & Eigenvector）

## 一句话定义
特征值 $\lambda$ 和特征向量 $v \neq 0$ 满足 $Tv = \lambda v$——算子在这些方向上"只是拉伸"，不改变方向。特征值是算子的"DNA"。

## 形式定义

设 $T \in \mathcal{L}(V)$，$\lambda \in \mathbb{F}$：

- $\lambda$ 是 $T$ 的**特征值**，若 $\exists v \neq 0,\ Tv = \lambda v$
- $v$ 是对应 $\lambda$ 的**特征向量**，即 $v \in \text{null}(T - \lambda I)$ 且 $v \neq 0$

**等价条件（定理 5.7）**：$\lambda$ 是特征值 $\Leftrightarrow$ $T - \lambda I$ 不是单射 $\Leftrightarrow$ $T - \lambda I$ 不可逆。

## 核心定理

### 特征向量的线性无关性（定理 5.11）

> 不同特征值对应的特征向量线性无关。

**推论**：互异特征值个数 $\leq \dim V$

### 复数域特征值存在性（定理 5.19）

> **每个有限维复向量空间上的算子都有特征值。**

这是 $\mathbb{C}$ 与 $\mathbb{R}$ 的根本区别——实数域上旋转算子（90°）没有特征值。

### 特征空间（定义 5.52）

$$E(\lambda, T) = \text{null}(T - \lambda I) = \{v : Tv = \lambda v\}$$

- 是 $V$ 的子空间
- $\dim E(\lambda, T) =$ 几何重数（$\geq 1$）
- 代数重数：$\lambda$ 作为特征多项式根的重数

## 可对角化（5D 节）

### 等价条件（定理 5.55）

$T$ 可对角化 $\Leftrightarrow$ 以下任一条件成立：
1. $V$ 有一组由特征向量构成的基
2. $V = E(\lambda_1,T) \oplus \cdots \oplus E(\lambda_m,T)$
3. $\dim V = \sum \dim E(\lambda_i,T)$
4. 最小多项式无重根

### 判别法

- $\dim V$ 个互异特征值 $\Rightarrow$ 可对角化（定理 5.58）
- 但互异特征值不够多时也可能可对角化

## 与其他概念的联系

- [[operator]]：特征值是理解算子结构的钥匙
- [[diagonalization]]：可对角化 $\Leftrightarrow$ 特征向量够用（每个特征值的几何重数 = 代数重数）
- [[spectral-theorem]]：谱定理是可对角化在内积空间的强化——不仅可对角化，还能选规范正交基
- [[jordan-form-theorem]]：若当型处理不可对角化（几何重数 < 代数重数）的情况

## 常见误区

> [!warning]
> 1. **特征值不随域而变**：$\mathbb{C}$ 上的特征值也是 $\mathbb{R}$ 上的（如果实系数多项式有复根，则共轭成对出现）
> 2. **几何重数 vs 代数重数**：几何重数 $\leq$ 代数重数；可对角化要求相等
> 3. **可对角化 ≠ 任意矩阵**：不可对角化的复矩阵（如 [[jordan-form-theorem|若当块]]）也是复矩阵

## 章节定位

> 第 5 章引入特征值语言，是从"抽象线性映射"到"具体矩阵分解"的关键过渡。特征值是算子的"DNA"，最小多项式是"基因图谱"。

详见：[[第5章 复向量空间上的算子 — 章节汇总]]
</parameter>
