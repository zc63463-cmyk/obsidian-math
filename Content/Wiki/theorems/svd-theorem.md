---
title: "奇异值分解"
created: 2026-04-14
updated: 2026-04-14
type: theorem
chapter: 7
tags: [theorem, svd, advanced, ch7]
sources: [LADR]
related: [[operator], [inner-product-space], [spectral-theorem]]
---

# 奇异值分解（Singular Value Decomposition, SVD）

## 一句话概括
每个线性映射 $T: V \to W$ 都可以分解为"正交基旋转 → 逐分量拉伸 → 正交基旋转"。SVD 是对任意线性映射的最广义"对角化"。

## 定理陈述（定理 7.70）

设 $T \in \mathcal{L}(V, W)$，$\sigma_1 \geq \cdots \geq \sigma_n > 0$ 为 $T$ 的奇异值（$T^*T$ 特征值的平方根）。则存在规范正交基 $e_1, \ldots, e_n \in V$ 和 $f_1, \ldots, f_n \in W$ 使得：
$$Tv = \sigma_1 \langle v, e_1 \rangle f_1 + \cdots + \sigma_n \langle v, e_n \rangle f_n$$

## 矩阵形式

任意 $A \in \mathbb{F}^{m,n}$ 可分解为：
$$A = U \Sigma V^*$$

- $U \in \mathbb{F}^{m,m}$：幺正矩阵（规范正交基）
- $\Sigma \in \mathbb{F}^{m,n}$：对角线为奇异值的对角矩阵
- $V \in \mathbb{F}^{n,n}$：幺正矩阵

## 三个核心概念

| 概念 | 定义 |
|------|------|
| **奇异值** $\sigma_i$ | $T^*T$ 特征值的平方根，$T^*T$ 是正算子 |
| **右奇异向量** $e_i$ | $T^*T e_i = \sigma_i^2 e_i$（$V$ 的规范正交基）|
| **左奇异向量** $f_i$ | $f_i = \frac{1}{\sigma_i} T e_i$（$W$ 的规范正交基）|

## 几何直观

```
输入空间 V          算子 T          输出空间 W
     │                                ▲
     │  正交基旋转 V*                 │
     ▼                                │
  e₁ ──► σ₁ f₁                      │
  e₂ ──► σ₂ f₂                      │
  ...        正交基旋转 U            │
  eₙ ──► σₙ fₙ                      │
```

1. **右奇异向量基** $e_i$：$V$ 的规范正交基，是 $T^*T$ 的特征向量
2. **拉伸**：$e_i$ 被拉伸 $\sigma_i$ 倍
3. **左奇异向量基** $f_i$：$W$ 的规范正交基，是 $TT^*$ 的特征向量

## SVD 的意义

| 方面 | 说明 |
|------|------|
| 几何 | 正交基旋转 → 拉伸（$\sigma_i$）→ 正交基旋转 |
| 代数 | 最广义的"对角化"，适用于任意矩阵 |
| 应用 | 降维、PCA、伪逆、数据压缩、推荐系统 |

## 推论

### 伪逆（定理 7.75）

$$T^\dagger = \sum_{k=1}^r \frac{1}{\sigma_k} f_k e_k^*$$

其中 $r = \text{rank}\ T$。

伪逆的性质：
- $TT^\dagger = P_{\text{range}\ T}$
- $T^\dagger T = P_{(\text{null}\ T)^\perp}$

### 最佳逼近

设 $\text{rank}\ T = r$，则截断 SVD（保留前 $k$ 个奇异值）给出在秩 $k$ 矩阵中最优逼近 $A$ 的矩阵。

## 与谱定理的关系

| | 谱定理 | SVD |
|--|--------|-----|
| 适用对象 | $T: V \to V$（算子）| $T: V \to W$（一般映射）|
| 特殊条件 | $T$ 正规 | 无 |
| 分解形式 | $T = \sum \lambda_k P_k$ | $T = \sum \sigma_k f_k e_k^*$ |
| 核心不变量 | 特征值 $\lambda_k$ | 奇异值 $\sigma_k$ |

> SVD 是谱定理的最广义形式。谱定理是 SVD 在 $V=W$ 且 $T$ 正规时的特例。

详见：[[第7章 内积空间上的算子 — 章节汇总]]
