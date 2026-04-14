# llm-wiki + Quartz 云展示知识库构建流程

## 项目概述

将 Obsidian 笔记库通过 Quartz 静态网站生成器，部署到 Cloudflare Pages，实现云端展示。

- **笔记仓库**: https://github.com/zc63463-cmyk/obsidian-math
- **在线预览**: https://2f575ab0.obsidian-math.pages.dev/
- **部署平台**: Cloudflare Pages (免费)
- **静态生成**: Quartz v4

---

## 目录结构

```
Obsidian-math/
├── Content/                    # 笔记源文件 (Obsidian编辑)
│   ├── Wiki/                   # Wiki概念笔记
│   │   ├── concepts/           # 概念定义
│   │   └── theorems/           # 定理
│   └── 线性代数/               # 课程笔记
│       ├── notes/              # 各节笔记
│       └── canvas/             # Obsidian Canvas
├── quartz/                     # Quartz静态网站配置
│   ├── quartz.config.ts        # 核心配置
│   ├── quartz.layout.ts        # 布局配置
│   ├── content/                # 指向 ../Content 的符号链接或引用
│   ├── build.sh               # 构建脚本
│   └── public/                 # 构建输出 (gitignored)
├── public/                     # 构建输出副本 (已提交到GitHub)
└── .gitignore
```

---

## Quartz 配置要点

### 1. quartz.config.ts 核心配置

```typescript
const config: QuartzConfig = {
  configuration: {
    pageTitle: "线性代数 Wiki",
    pageTitleSuffix: "— LADR",
    enableSPA: true,
    enablePopovers: true,
    baseUrl: "2f575ab0.obsidian-math.pages.dev",
    ignorePatterns: ["private", "templates", ".obsidian", "_archive", "quartz", "node_modules", ".git"],
    defaultDateType: "modified",
    // ...
  },
  plugins: {
    transformers: [
      Plugin.FrontMatter(),
      Plugin.ObsidianFlavoredMarkdown({ enableInHtmlEmbed: false }),
      Plugin.GitHubFlavoredMarkdown(),
      Plugin.TableOfContents(),
      Plugin.CrawlLinks({ markdownLinkResolution: "shortest" }),
      Plugin.Latex({ renderEngine: "katex" }),
      // ...
    ],
    filters: [Plugin.RemoveDrafts()],
    emitters: [
      Plugin.ContentPage(),
      Plugin.TagPage(),
      Plugin.ContentIndex({ enableSiteMap: true, enableRSS: true }),
      // ...
    ],
  },
}
```

### 2. Content 目录配置

Quartz 通过 `quartz/content` 目录读取笔记。确保构建命令能找到 `../Content`：

- **构建命令**: `npx quartz build -d ..` (从 quartz/ 目录执行，指向父目录的 Content)
- Quartz 内容路径: `quartz/content/` → 实际指向 `../Content`

---

## 部署流程 (GitHub + Cloudflare Pages)

### 首次部署步骤

1. **本地完成 Quartz 配置**
   - 安装依赖: `cd quartz && npm i`
   - 本地测试: `npx quartz build -d ..`
   - 本地预览: `npx quartz serve`

2. **推送代码到 GitHub**
   ```bash
   cd /path/to/Obsidian-math
   git add .
   git commit -m "feat: 提交说明"
   git push origin main
   ```

3. **创建 Cloudflare Pages 项目**
   - 登录 [Cloudflare Dashboard](https://dash.cloudflare.com/)
   - Workers & Pages → Create application → Pages → Connect to GitHub
   - 选择仓库: `zc63463-cmyk/obsidian-math`

4. **配置构建参数**
   | 设置 | 值 |
   |------|-----|
   | Production branch | `main` |
   | Root directory | `/quartz` |
   | Build command | `npx quartz build -d ..` |
   | Output directory | `public` |

5. **部署成功**
   - 自动获得 `*.pages.dev` 域名
   - 每次 git push 自动触发重建

### 日常更新流程

```bash
# 1. 在 Obsidian 中编辑笔记
# 2. 提交到 GitHub
git add .
git commit -m "update: 笔记更新内容"
git push origin main
# 3. Cloudflare Pages 自动构建部署 (约1-2分钟)
```

---

## 自定义域名配置

### 在 Cloudflare Pages 设置

1. **登录 Cloudflare Dashboard**
   - https://dash.cloudflare.com/
   - 进入 Workers & Pages → 你的项目 → Settings → Custom domains

2. **添加自定义域名**
   - 点击 "Set up a custom domain"
   - 输入你的域名: 例如 `math.yourdomain.com`
   - Cloudflare 会自动验证并配置 DNS

3. **配置 DNS 记录** (如果Cloudflare未自动完成)
   ```
   类型: CNAME
   名称: math
   目标: 2f575ab0.obsidian-math.pages.dev
   代理状态: DNS only → Proxied (橙色云)
   ```

### 在域名服务商设置

假设使用阿里云/腾讯云/Cloudflare 注册的域名:

```
# 需要在域名解析商添加 DNS 记录
# 如果 Cloudflare 已经管理该域名，直接在 Cloudflare 页面操作即可
```

### 注意事项

- Cloudflare Pages 免费版支持自定义域名
- 域名会自动获得 SSL 证书 (HTTPS)
- 无需额外配置重定向，Cloudflare 自动处理

---

## 常见问题排查

### 构建失败

```bash
# 本地测试构建
cd quartz
npm i
npx quartz build -d .. 2>&1
```

常见原因:
- 依赖安装失败 → 删除 `node_modules` 重新 `npm i`
- 路径错误 → 确认 `quartz/content` 指向正确
- markdown 语法错误 → Quartz 会警告但通常继续构建

### 部署后内容未更新

1. 确认 GitHub 已推送成功
   ```bash
   git log origin/main -1  # 查看远程最新提交
   ```

2. 在 Cloudflare Dashboard 查看构建日志
   - Workers & Pages → 项目 → Deployments → 查看最新构建日志

3. 手动触发重新部署
   - Deployments 页面 → 点击 "Retry deployment"

### 页面404

- 确认 `baseUrl` 配置正确
- 确认 `ignorePatterns` 没有误排除笔记目录

### SSL 证书问题

- 自定义域名首次部署后，SSL 证书可能需要5分钟生效
- 等待后刷新页面

---

## 后续优化方向

- [ ] 配置自定义域名
- [ ] 开启 RSS 订阅
- [ ] 添加 Google Analytics 或 Plausible 统计
- [ ] 配置 Obsidian 双向链接预览插件
- [ ] 设置 GitHub Actions 自动化构建测试

---

## 参考链接

- [Quartz 官方文档](https://quartz.jzhao.xyz/)
- [Cloudflare Pages 文档](https://developers.cloudflare.com/pages/)
- [Obsidian](https://obsidian.md/)
