---
title: "行列式"
created: 2026-04-14
updated: 2026-04-14
type: concept
chapter: 9
tags: [concept, determinant, advanced, ch9]
sources: [LADR]
related: [[matrix], [eigenvalue], [tensor-product], [jordan-form-theorem]]
---

# 行列式（Determinant）

## 一句话定义
行列式是唯一的 $n$ 次交错多重线性型 $\det: \mathbb{F}^{n,n} \to \mathbb{F}$，满足 $\det I = 1$。它衡量线性算子对"有向体积"的缩放因子。

## LADR 的定义路径（第 9 章）

LADR 用多重线性型的语言定义行列式，揭示了其本质：

```
双线性型（两个变量各自线性）
  ↓ 加"交错"条件（交换两行变号）
交错多重线性型
  ↓ 加"n次"条件（n个向量）
行列式（唯一存在的n次交错多重线性型）
```

## 核心性质

| 性质 | 内容 |
|------|------|
| 乘法公式 | $\det(AB) = \det(A)\det(B)$ |
| 可逆判据 | $\det(A) \neq 0 \Leftrightarrow A$ 可逆 |
| 转置不变 | $\det(A^T) = \det(A)$ |
| 特征值关系 | $\det(A) = \lambda_1 \cdots \lambda_n$（特征值之积）|

## 莱布尼茨公式（定理 9.46）

$$\det A = \sum_{\sigma \in S_n} \operatorname{sgn}(\sigma) \prod_{j=1}^n A_{j,\sigma(j)}$$

这是行列式的"原始"定义——按所有排列求和。但 LADR 用多重线性型的存在唯一性作为定义，将这个公式作为推论。

## 特征值与行列式

| 定理 | 内容 |
|------|------|
| 特征多项式 | $p_T(z) = \det(zI - T)$（定义 8.26）|
| $\det T = \lambda_1 \cdots \lambda_n$ | 行列式等于特征值的乘积（按重数计）|
| $\text{tr} T = \sum \lambda_k$ | 迹等于特征值的和 |

## 与若当型的关系

- 若当型中每个 $1 \times 1$ 若当块贡献一个特征值
- 若当块的行列式是 $\lambda^m$（$m$ 为块大小）
- 整个矩阵的行列式是所有特征值的乘积

## 与其他概念的联系

- [[matrix]]：行列式是方阵的重要不变量
- [[eigenvalue]]：特征值之积等于行列式
- [[tensor-product]]：行列式本质上是最高次交错多重线性型，即 $V$ 的 $n$ 次外幂 $\Lambda^n(V)$
- [[jordan-form-theorem]]：行列式（特征多项式）是若当型的代数基础

## 常见误解

> [!warning]
> 传统教材从"展开公式"引入行列式，LADR 的路径是：多重线性型 $\Rightarrow$ 行列式的存在唯一性 $\Rightarrow$ 具体计算公式是推论而非定义。理解这个路径比记住计算公式更重要。

## 章节定位

> 第 9 章的行列式定义揭示了行列式不是"竖式计算"，而是多重线性型理论的自然产物。

详见：[[第9章 多重线性代数和行列式 — 章节汇总]]
