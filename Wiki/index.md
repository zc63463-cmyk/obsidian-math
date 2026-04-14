# Wiki Index

> 内容目录。每页按类型分类，附一行摘要。
> Last updated: 2026-04-14 | Total pages: 18

---

## Concepts（核心概念）[14]

| 页面 | 一句话摘要 |
|------|-----------|
| [[vector-space]] | 满足 8 条公理的集合，向量可加、可数乘；公理化方法使同一理论适用于 $\mathbb{F}^n$、函数空间、多项式等 |
| [[subspace]] | 向量空间中"自洽"的子集；三条件判别法是后续零空间、特征空间证明的基础 |
| [[span]] | 张成空间 $\text{span}(v_1,\ldots,v_m)$ 是包含给定向量组的最小子空间；回答"能描述多大空间" |
| [[linear-independence]] | 线性无关 = 无冗余向量；三条件之一不满足则该向量可由其余向量线性表示 |
| [[basis-and-dimension]] | 基 = 线性无关 + 张成；维数是基的长度，是唯一确定的不变量 |
| [[linear-map]] | 保持加法和标量乘法的函数；先有映射，再有矩阵 |
| [[matrix]] | 线性映射关于特定基的表示；列 = 基向量的像（坐标）；换基公式 $B=S^{-1}AS$ |
| [[operator]] | $V \to V$ 的线性映射；特征值是其"DNA"，最小多项式是其"基因图谱" |
| [[eigenvalue]] | 满足 $Tv=\lambda v$ 的标量和向量；揭示算子在某些方向上"只是拉伸" |
| [[diagonalization]] | 可对角化 $\Leftrightarrow$ 有足够的线性无关特征向量；不可对角化用若当型处理 |
| [[inner-product-space]] | 带内积 $\langle v,w\rangle$ 的向量空间，赋予长度、角度、正交等几何结构 |
| [[gram-schmidt]] | 从任意线性无关向量组构造规范正交基；保证谱定理等的存在性 |
| [[determinant]] | 唯一的 $n$ 次交错多重线性型；衡量有向体积的缩放因子 |
| [[tensor-product]] | 将双线性映射"线性化"的通用工具；泛性质是其核心价值 |

## Theorems（重要定理）[4]

| 页面 | 一句话摘要 |
|------|-----------|
| [[rank-nullity-theorem]] | $\dim \text{null}\ T + \dim \text{range}\ T = \dim V$，线性代数最重要的定理 |
| [[spectral-theorem]] | 正规算子关于规范正交基可对角化；自伴 $\Rightarrow$ 正规 $\Rightarrow$ 可对角化；谱定理是皇冠 |
| [[svd-theorem]] | 任意线性映射分解为旋转—拉伸—旋转；最广义的对角化；伪逆 $\sigma_i^{-1}$ |
| [[jordan-form-theorem]] | 每个复算子都有若当基；广义特征向量填补特征向量的缺口；若当型是最完整描述 |

## Notes（章节笔记）

> 原笔记位于 `../线性代数/notes/`，按 LADR 章节组织。Wiki 层负责跨章节汇总，原笔记按原样保留。

## Comparisons（对比分析）

## Queries（常问问题）

## Meta

| 页面 | 说明 |
|------|------|
| [[SCHEMA]] | 本知识库的规范、约定和目录结构 |
| [[index]] | 本文件 |
| [[log]] | 操作日志 |
