---
title: "Gram-Schmidt 正交化"
created: 2026-04-14
updated: 2026-04-14
type: concept
chapter: 6
tags: [concept, inner-product, advanced, ch6]
sources: [LADR]
related: [[inner-product-space], [spectral-theorem], [svd-theorem]]
---

# Gram-Schmidt 正交化（Gram-Schmidt Orthogonalization）

## 一句话定义
从任意线性无关向量组出发，构造两两正交的规范正交向量组，保持张成空间不变。这是内积空间中最基本的构造工具。

## 定理陈述（定理 6.32）

设 $v_1, \ldots, v_m$ 为内积空间 $V$ 中线性无关向量组。令：

$$f_k = v_k - \sum_{j=1}^{k-1} \frac{\langle v_k, f_j \rangle}{\|f_j\|^2} f_j, \quad e_k = \frac{f_k}{\|f_k\|}$$

则 $e_1, \ldots, e_m$ 是规范正交的，且 $\text{span}(e_1,\ldots,e_m) = \text{span}(v_1,\ldots,v_m)$。

## 直观理解

每一步的核心操作是**减去投影**：
- $v_k$ 在已有正交向量 $f_1,\ldots,f_{k-1}$ 上的投影为 $\sum_{j=1}^{k-1} \frac{\langle v_k, f_j \rangle}{\|f_j\|^2} f_j$
- 从 $v_k$ 中减去这个投影，剩下的 $f_k$ 就与所有 $f_j$ 正交
- 最后归一化 $\|f_k\| = 1$ 得到 $e_k$

## 核心推论

### 规范正交基的存在性（定理 6.35）

> 每个有限维内积空间都有规范正交基。

由 Gram-Schmidt 从任意基出发即可构造。

### 可扩充性（定理 6.36）

> 每个规范正交组都可以扩充为规范正交基。

## 与谱定理和 SVD 的关系

- **谱定理**：规范正交特征向量基可由 Gram-Schmidt 构造
- **SVD**：左奇异向量 $f_j$ 和右奇异向量 $e_j$ 都是规范正交的
- **QR 分解**（定理 7.58）：$A = QR$，$Q$ 的列是 $A$ 列空间的规范正交基，$R$ 是上三角正对角线——Gram-Schmidt 的矩阵形式
- **最小二乘法**：正交投影到列空间 $\Rightarrow$ 用 Gram-Schmidt 求最优近似解

## 数值稳定性问题

经典 Gram-Schmidt 在数值计算中不稳定（正交性可能严重丧失）。改进方法：

1. **修正 Gram-Schmidt (MGS)**：避免因舍入误差导致的正交性丧失
2. **Householder 变换**：数值稳定，但计算成本更高
3. **Givens 旋转**：适合稀疏矩阵

## 与其他概念的联系

- [[inner-product-space]]：Gram-Schmidt 是内积空间的核心算法
- [[spectral-theorem]]：谱定理中的规范正交特征向量基可由 Gram-Schmidt 构造
- [[svd-theorem]]：SVD 中的正交基构造依赖 Gram-Schmidt

## 章节定位

> 6B 节是内积空间的核心算法。Gram-Schmidt 保证规范正交基的存在性，是谱定理、SVD、最小二乘的基础。

详见：[[第6章 内积空间 — 章节汇总]]
</parameter>
