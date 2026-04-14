---
title: "谱定理"
created: 2026-04-14
updated: 2026-04-14
type: theorem
chapter: 7
tags: [theorem, spectral-theory, advanced, ch7]
sources: [LADR]
related: [[eigenvalue], [operator], [inner-product-space]]
---

# 谱定理（Spectral Theorem）

## 一句话概括
自伴（正规）算子关于某个规范正交基有对角矩阵——它们在最好的基下"只是拉伸"。谱定理是线性代数算子理论的皇冠。

## 复谱定理（定理 7.31）

设 $V$ 为复内积空间，$T \in \mathcal{L}(V)$。则 $T$ 为正规算子 $\Longleftrightarrow$ $V$ 有一个由特征向量构成的规范正交基。

等价表述：$T$ 关于某规范正交基的矩阵是对角矩阵。

## 实谱定理（定理 7.29）

设 $V$ 为实内积空间，$T \in \mathcal{L}(V)$。则 $T$ 为自伴算子 $\Longleftrightarrow$ $V$ 有一个由特征向量构成的规范正交基。

## 算子分类（从一般到特殊）

| 类型 | 定义 | 对角化 |
|------|------|--------|
| 一般算子 | $T \in \mathcal{L}(V)$ | 未必可对角化 |
| 正规算子 | $TT^* = T^*T$ | 规范正交基下对角化 |
| 自伴算子 | $T^* = T$ | 规范正交基下对角化，特征值为实数 |

正规算子的 5 条等价性质（定理 7.21）：
- $\|Tv\| = \|T^*v\|$ 对所有 $v$
- $\text{null}\ T = \text{null}\ T^*$
- $\text{range}\ T = \text{range}\ T^*$
- $\text{range}\ T = (\text{null}\ T)^\perp$
- $T - \lambda I$ 对所有 $\lambda$ 正规

## 谱分解

若 $T$ 为正规算子，特征值 $\lambda_1, \ldots, \lambda_m$ 互异，则：
$$T = \lambda_1 P_1 + \cdots + \lambda_m P_m$$

其中 $P_k$ 是到特征空间 $E(\lambda_k, T)$ 的正交投影，且 $P_j P_k = 0$（$j \neq k$），$P_1 + \cdots + P_m = I$。

## 谱定理的意义

> 谱定理是全书理论高潮：它告诉我们，自伴/正规算子不仅可对角化，而且可以选一组合适的基（规范正交的）来对角化。这在物理（量子力学）和应用中（SVD、最小二乘）都有重要意义。

## 与 SVD 的关系

- 谱定理：$T: V \to V$，要求 $T$ 正规 $\Rightarrow$ $V$ 的正交基对角化 $T$
- SVD：$T: V \to W$，无结构要求 $\Rightarrow$ $V$ 和 $W$ 的正交基同时对齐

> SVD 是谱定理的最广义形式，适用于任意线性映射。

详见：[[第7章 内积空间上的算子 — 章节汇总]]
