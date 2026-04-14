#!/bin/bash
# push.sh - 快速提交并推送 Obsidian-math 更新到 GitHub
# 用法: ./push.sh [提交信息]

set -e

REPO_DIR="$(cd "$(dirname "$0")" && pwd)"
cd "$REPO_DIR"

# 检查是否有更改
if ! git diff --quiet || ! git diff --cached --quiet; then
    echo "📁 检测到文件变更:"
    git status --short
    echo ""
else
    echo "✅ 没有需要提交的变更"
    exit 0
fi

# 获取提交信息
if [ -n "$1" ]; then
    MSG="$1"
else
    echo "请输入提交信息 (留空则退出):"
    read -r MSG
    if [ -z "$MSG" ]; then
        echo "已取消"
        exit 1
    fi
fi

# 提交
echo ""
echo "📤 提交并推送..."
git add -A
git commit -m "$MSG"
git push origin main

echo ""
echo "✅ 推送完成!"
