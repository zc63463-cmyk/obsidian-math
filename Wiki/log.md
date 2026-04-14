---
title: Wiki Log
created: 2026-04-14
updated: 2026-04-14
type: meta
tags: [meta]
---

# Wiki Log

> 按时间顺序记录所有 wiki 操作。Append-only。
> 格式：`## [YYYY-MM-DD] action | subject`

---

## [2026-04-14] init | Wiki initialized
- Domain: 线性代数（基于 LADR 4th Edition, Sheldon Axler）
- Structure created: SCHEMA.md, index.md, log.md
- Concepts: 向量空间、线性映射、特征值、内积空间、算子理论、谱定理、SVD、若当型、行列式

## [2026-04-14] audit | Existing vault analysis
- Total notes: 54 .md files
- Wikilinks: 615 total, 0 genuinely broken (1 Obsidian alias, 0 heading anchors)
- Orphan pages: 1 (`1B 向量空间.md` — empty root-level duplicate)
- Duplicate section files: 4 pairs found
  - 5A: `不变子空间.md` vs `不变子空间、特征值和特征向量.md`
  - 6C: `正交补与正交投影.md` vs `正交补和正交投影.md`
  - 8D: `Jordan标准型.md` vs `联系矩阵与算子的桥梁——迹.md`
  - 9B: `交错多重线性型.md` vs `行列式与特征值.md`

## [2026-04-14] create | Wiki layer initialized
- Created: concepts/vector-space.md, concepts/linear-map.md, concepts/eigenvalue.md
- Created: concepts/operator.md, concepts/inner-product-space.md, concepts/determinant.md
- Created: theorems/rank-nullity-theorem.md, theorems/spectral-theorem.md
- Created: theorems/svd-theorem.md, theorems/jordan-form-theorem.md
- Created: _archive/ (empty, for future archiving)

## [2026-04-14] create | Filled missing concept pages from vault notes
- Filled: concepts/matrix.md (from 3C 矩阵.md)
- Filled: concepts/gram-schmidt.md (from 6B 规范正交基.md)
- Filled: concepts/diagonalization.md (from 5D 可对角化算子.md)
- Filled: concepts/linear-independence.md (from 2A 张成空间和线性无关性.md)
- Filled: concepts/basis-and-dimension.md (from 2B 基.md)
- Filled: concepts/subspace.md (from 1C 子空间.md)
- Filled: concepts/tensor-product.md (from 9D 张量积.md)
- Filled: concepts/span.md (from 2A 张成空间和线性无关性.md)
- Fixed SCHEMA.md placeholder wikilinks in documentation examples

## [2026-04-14] lint | Wiki wikilinks verified
- Total broken wikilinks in Wiki layer: 0
- Wiki layer now has 14 concepts + 4 theorems = 18 pages

## [2026-04-14] enrich | Wiki pages fully expanded from vault chapter summaries
- All 14 concept pages: vector-space, subspace, span, linear-independence, basis-and-dimension,
  linear-map, matrix, operator, eigenvalue, diagonalization, inner-product-space,
  gram-schmidt, determinant, tensor-product
- All 4 theorem pages: rank-nullity-theorem, spectral-theorem, svd-theorem, jordan-form-theorem
- Content sourced from vault chapter summaries (9 files, ~200KB total)
- Average word count per page: ~250-350 words (up from ~130-200)
