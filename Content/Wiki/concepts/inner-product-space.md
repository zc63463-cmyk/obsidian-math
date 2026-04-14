---
title: "内积空间"
created: 2026-04-14
updated: 2026-04-14
type: concept
chapter: 6
tags: [concept, inner-product, advanced, ch6]
sources: [LADR]
related: [[operator], [spectral-theorem], [svd-theorem], [gram-schmidt]]
---

# 内积空间（Inner Product Space）

## 一句话定义
内积空间是带有内积 $\langle v, w \rangle$ 的向量空间，内积赋予空间"长度"（范数）和"角度"（正交）等几何概念。这是线性代数从代数走向几何的关键一步。

## 形式定义（定义 6.2）

设 $V$ 为 $\mathbb{F}$ 上的向量空间。内积 $\langle \cdot, \cdot \rangle : V \times V \to \mathbb{F}$ 满足：

| 公理 | 内容 |
|------|------|
| 正性 | $\langle v, v \rangle \geq 0$ |
| 定性 | $\langle v, v \rangle = 0 \Leftrightarrow v = 0$ |
| 第一位置可加性 | $\langle u+v, w \rangle = \langle u, w \rangle + \langle v, w \rangle$ |
| 第一位置齐次性 | $\langle \lambda v, w \rangle = \lambda \langle v, w \rangle$ |
| 共轭对称性 | $\langle v, w \rangle = \overline{\langle w, v \rangle}$ |

> **注意**：第二位置是共轭线性的——$\langle v, \lambda w \rangle = \bar{\lambda} \langle v, w \rangle$。这使得复内积空间上的计算与实内积空间保持一致。

## 导出概念

### 范数（定义 6.7）

$$\|v\| = \sqrt{\langle v, v \rangle}$$

### 正交（定义 6.10）

$$u \perp v \Leftrightarrow \langle u, v \rangle = 0$$

## 核心定理

### 柯西-施瓦兹不等式（定理 6.14）

$$|\langle u, v \rangle| \leq \|u\|\|v\|$$

> 这是数学中最重要的不等式之一，是内积空间一切几何的基石。

### 正交分解（命题 6.13）

设 $u \neq 0$，则任意 $v$ 可唯一分解为：
$$v = \frac{\langle v, u \rangle}{\|u\|^2} u + w, \quad w \perp u$$

其中第一项是 $v$ 在 $u$ 方向上的"投影"。

### 格拉姆-施密特正交化（定理 6.32）

从任意线性无关向量组 $v_1,\ldots,v_m$ 出发，构造规范正交向量组 $e_1,\ldots,e_m$：
$$f_k = v_k - \sum_{j=1}^{k-1} \frac{\langle v_k, f_j \rangle}{\|f_j\|^2} f_j, \quad e_k = \frac{f_k}{\|f_k\|}$$

每一步：减去在已构造正交向量上的投影，剩余的就是正交分量。

**推论（定理 6.35）**：每个有限维内积空间都有规范正交基。

### 里斯表示定理（定理 6.42）

> 每个线性泛函 $\varphi \in V'$ 唯一对应 $v \in V$：$\varphi(u) = \langle u, v \rangle$。

这是内积空间区别于一般向量空间的本质特征——对偶空间 $V'$ 与 $V$ 通过内积自然等同。

## 正交补与直和分解

- **正交补** $U^\perp = \{v \in V : \langle v, u \rangle = 0, \forall u \in U\}$（定义 6.46）
- **直和分解** $V = U \oplus U^\perp$（定理 6.49）
- **正交投影** $P_U$：保留 $U$ 分量，丢弃 $U^\perp$ 分量（定义 6.55）

### 最短距离定理（定理 6.61）

> $\|v - u\|$ 最小的 $u \in U$ 恰为 $P_U v$。

这统一了最小二乘法、函数逼近等应用问题的理论基础。

## 与其他概念的联系

- [[operator]]：在内积空间上研究算子，得到谱定理等强结果
- [[spectral-theorem]]：谱定理依赖内积结构（规范正交基）
- [[svd-theorem]]：SVD 是内积空间算子理论的自然延伸
- [[gram-schmidt]]：Gram-Schmidt 是构造规范正交基的算法

## 章节定位

> 第 6 章引入内积，赋予抽象向量空间以几何直觉。谱定理（SVD、最小二乘、极分解）都依赖内积结构。

详见：[[第6章 内积空间 — 章节汇总]]
