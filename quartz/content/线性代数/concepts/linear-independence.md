---
title: "线性无关"
created: 2026-04-14
updated: 2026-04-14
type: concept
chapter: 2
tags: [concept, vector-space, foundation, ch2]
sources: [LADR]
related: [[vector-space], [span], [basis-and-dimension]]
---

# 线性无关（Linear Independence）

## 一句话定义
向量组 $v_1,\ldots,v_m$ 线性无关，当且仅当 $a_1v_1+\cdots+a_mv_m=0$ 时必有 $a_1=\cdots=a_m=0$。换言之：没有冗余向量，每个向量都对"张成"有贡献。

## 形式定义（定义 2.5）

> $v_1,\ldots,v_m \in V$ **线性无关**，若
> $$a_1v_1+\cdots+a_mv_m=0 \Longrightarrow a_1=\cdots=a_m=0$$

**线性相关**：若存在不全为零的系数使上式成立（等价于：至少有一个向量是其余向量的线性组合）。

## 关键性质

### 线性相关性引理（引理 2.8）

> 若 $v_1,\ldots,v_m$ 线性相关，则存在 $k$ 使得：
> - $v_k \in \text{span}(v_1,\ldots,v_{k-1})$
> - 去掉 $v_k$ 后，剩下的向量组张成空间不变

**意义**：这是从线性相关迈向线性无关的关键——每次去除一个冗余向量，最终得到线性无关组，且张成空间不变。

### 长度比较定理（定理 2.14）

> 线性无关组的长度 $\leq$ 张成组的长度

**推论**：有限维空间中，基的长度（维数）是唯一确定的——不依赖于具体基的选择。

## 几何直觉

- $\mathbb{R}^2$ 中两个向量线性相关 $\Leftrightarrow$ 共线（一个在另一个的张成中）
- $\mathbb{R}^3$ 中三个向量线性相关 $\Leftrightarrow$ 共面或共线
- $\mathbb{R}^n$ 中超过 $n$ 个向量必线性相关（维数限制）

## 与其他概念的联系

- [[span]]：线性无关 $\Leftrightarrow$ 去除任一向量都会减小张成空间
- [[basis-and-dimension]]：基 = 线性无关 + 张成整个空间
- [[vector-space]]：线性无关是向量空间结构的核心性质

## 章节定位

> 2A 节引入线性无关，与张成空间共同为基和维数铺路。线性无关的本质是"无冗余"——每个向量都贡献新方向。

详见：[[第2章 有限维向量空间 — 章节汇总]]
