---
title: "张量积"
created: 2026-04-14
updated: 2026-04-14
type: concept
chapter: 9
tags: [concept, tensor, advanced, ch9]
sources: [LADR]
related: [[determinant], [linear-map]]
---

# 张量积（Tensor Product）

## 一句话定义
张量积 $V \otimes W$ 是将双线性映射"线性化"的通用工具：每个双线性映射 $B: V \times W \to \mathbb{F}$ 唯一对应一个线性映射 $\hat{B}: V \otimes W \to \mathbb{F}$。

## 核心定理：泛性质（定理 9.79）

> 每个双线性映射 $B: V \times W \to \mathbb{F}$ 唯一对应一个线性映射 $\hat{B}: V \otimes W \to \mathbb{F}$，满足 $\hat{B}(v \otimes w) = B(v,w)$。

这是张量积的核心价值：==将双线性问题转化为线性问题==。

## 形式定义（定义 9.71）

$$V \otimes W = \mathcal{L}(V', W'; \mathbb{F})$$

即从 $V$ 的对偶空间到 $W$ 的对偶空间的所有双线性泛函构成的空间。

## 基本性质

| 性质 | 内容 |
|------|------|
| 维数 | $\dim(V \otimes W) = (\dim V)(\dim W)$ |
| 基 | 若 $e_1,\ldots,e_m$ 和 $f_1,\ldots,f_n$ 分别是 $V,W$ 的基，则 $e_i \otimes f_j$ 是 $V \otimes W$ 的基 |
| 双线性 | $(v_1+v_2)\otimes w = v_1\otimes w + v_2\otimes w$，$v\otimes(w_1+w_2) = v\otimes w_1 + v\otimes w_2$ |

## 与行列式的关系

行列式本质上是最高次（$n$ 次）交错多重线性型，即 $V$ 的 $n$ 次外幂：

$$\det \in \mathcal{L}_{\text{alt}}(V^n; \mathbb{F}) = \Lambda^n(V)$$

## 与其他概念的联系

- [[determinant]]：行列式是张量积（外代数）在最高次时的特例
- [[linear-map]]：张量积通过泛性质将双线性映射转化为线性映射

## 章节定位

> 9D 节是第 9 章的核心高潮之一。张量积是现代数学（代数几何、微分几何、量子力学）的核心语言。

详见：[[第9章 多重线性代数和行列式 — 章节汇总]]
