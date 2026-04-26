---
title: "维数公式"
created: 2026-04-14
updated: 2026-04-14
type: theorem
chapter: 3
tags: [theorem, linear-map, core, ch3]
sources: [LADR]
related: [[linear-map], [rank-nullity-theorem]]
---

# 维数公式（Rank-Nullity Theorem / Linear Map Fundamental Theorem）

## 定理陈述（定理 3.21）

$$T: V \to W \text{ 为线性映射} \Longrightarrow \dim \text{null}\ T + \dim \text{range}\ T = \dim V$$

## 一句话概括
零空间的维数 + 值域的维数 = 定义域的维数。

## 证明思路（三种证明）

### 证明一：基扩展法（标准证明）

1. 取 $\text{null}\ T$ 的一组基 $v_1, \ldots, v_k$
2. 扩展为 $V$ 的一组基 $v_1, \ldots, v_k, u_1, \ldots, u_m$
3. 证明 $Tu_1, \ldots, Tu_m$ 是 $\text{range}\ T$ 的基
4. 得 $k + m = \dim V$

### 证明二：直和版本

$$V = \text{null}\ T \oplus U \quad (\dim U = \dim \text{range}\ T)$$

因为 $T|_U: U \to \text{range}\ T$ 是同构。

## 重要意义

> 这是线性代数中最重要的定理之一，贯穿全书：
> - 第 3 章：建立线性映射的基本理论
> - 第 5 章：证明特征空间的维数性质
> - 第 8 章：广义特征空间分解的基础

## 常见用法

| 场景 | 应用 |
|------|------|
| 判断线性映射是否满射 | $\dim \text{range}\ T = \dim W$ |
| 判断线性映射是否单射 | $\dim \text{null}\ T = 0$ |
| 维数计算 | 已知两个量，求第三个 |
| 维数公式（子空间）| $\dim(U_1+U_2) = \dim U_1 + \dim U_2 - \dim(U_1 \cap U_2)$ |

## 推论

- $\dim \text{range}\ T \leq \dim V$
- 若 $\dim V > \dim W$，则 $T$ 不可能满射
- 若 $\dim V < \dim W$，则 $T$ 不可能单射

## 章节定位

> 3.22 节是第 3 章的核心。LADR 的处理方式是：从抽象的线性映射出发，不依赖矩阵和坐标。

详见：[[第3章 线性映射 — 章节汇总]]
