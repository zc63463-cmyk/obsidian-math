---
title: "矩阵"
created: 2026-04-14
updated: 2026-04-14
type: concept
chapter: 3
tags: [concept, linear-map, core, ch3]
sources: [LADR]
related: [[linear-map], [rank-nullity-theorem], [determinant]]
---

# 矩阵（Matrix）

## 一句话定义
矩阵是线性映射关于特定基的表示——换基后矩阵按相似变换 $B = S^{-1}AS$ 变化。矩阵不是线性代数的起点，而是线性映射的坐标化身。

## LADR 的定义路径

```
抽象层面：线性映射 T: V → W
    ↓ 选定基 (v₁,...,vₙ) 和 (w₁,...,wₘ)
具体层面：矩阵 M(T) = [Tv_k 在 w_j 下的坐标]
```

> **核心洞察**：矩阵的**列** = 基向量的像（坐标）。这是理解矩阵最直观的方式。

## 形式定义（定义 3.29）

$m \times n$ **矩阵** $A$ 是 $\mathbb{F}$ 中元素构成的 $m$ 行 $n$ 列矩形阵列：
$$A_{j,k} = A\text{ 的第 }j\text{ 行第 }k\text{ 列的元素}$$

## 矩阵运算的真正来源

| 运算 | 来源 |
|------|------|
| 加法 | $\mathcal{M}(S+T) = \mathcal{M}(S) + \mathcal{M}(T)$ |
| 标量乘法 | $\mathcal{M}(\lambda T) = \lambda \mathcal{M}(T)$ |
| 乘法 | $\mathcal{M}(ST) = \mathcal{M}(S)\mathcal{M}(T)$（由复合映射唯一确定！）|

> [!important]
> **矩阵乘法不是任意规定的**——它是从 $\mathcal{M}(ST) = \mathcal{M}(S)\mathcal{M}(T)$ 反推出来的必然结果。

## 基本定理

### 列秩 = 行秩（定理 3.57）

> 矩阵的列秩（列空间维数）= 行秩（行空间维数）。

证明思路：行列分解 + 转置对称性 $\Rightarrow$ 优雅的对偶证明。

### 可逆等价条件（定理 3.69）

设 $A$ 为 $n \times n$ 矩阵，以下等价：
1. $A$ 可逆
2. $A$ 的列秩 = $n$
3. $A$ 的行秩 = $n$
4. $\det A \neq 0$

## 换基公式（定理 3.84）

若 $v_1,\ldots,v_n$ 和 $\tilde{v}_1,\ldots,\tilde{v}_n$ 是 $V$ 的两组基，过渡矩阵 $S$ 满足：
$$[\tilde{v}_1\ \cdots\ \tilde{v}_n] = [v_1\ \cdots\ v_n]S$$

则同一线性映射 $T$ 关于两组基的矩阵满足：
$$\tilde{A} = S^{-1}AS$$

> **换基公式的意义**：相似矩阵是同一个线性映射在不同坐标系下的化身。

## 与其他概念的联系

- [[linear-map]]：矩阵是线性映射的表示，选基决定矩阵形式
- [[rank-nullity-theorem]]：维数公式通过列空间/行空间刻画线性映射
- [[determinant]]：行列式是方阵的重要不变量，$\det A \neq 0 \Leftrightarrow A$ 可逆

## 章节定位

> 3C 节建立矩阵与线性映射的对应关系。LADR 的核心观点：==矩阵只是线性映射关于特定基的表示，线性映射本身与基的选取无关==。

详见：[[第3章 线性映射 — 章节汇总]]
