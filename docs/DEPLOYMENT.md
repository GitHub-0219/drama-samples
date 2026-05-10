# 部署指南

本文档说明了项目内容的发布和维护流程。

## 📋 目录

- [项目概述](#项目概述)
- [内容发布流程](#内容发布流程)
- [GitHub Pages 部署](#github-pages-部署)
- [内容维护](#内容维护)
- [常见问题](#常见问题)

## 项目概述

本项目为文档/内容类仓库，主要以 Markdown 文件和多媒体资源为主，无需复杂的构建流程。

## 内容发布流程

### 发布步骤

1. **内容准备**
   - 确保内容格式规范
   - 检查图片/链接可用性
   - 核实数据准确性

2. **版本管理**
   ```bash
   # 创建发布分支
   git checkout -b content/release-v1.0.0
   
   # 提交变更
   git add .
   git commit -m "content: release v1.0.0"
   
   # 推送并创建 PR
   git push origin content/release-v1.0.0
   ```

3. **创建 Release**
   - 在 GitHub 上创建新的 Release
   - 使用语义化版本号（如 `v1.0.0`）
   - 撰写 Release Notes 说明本次更新内容

### 版本号规范

遵循 [语义化版本](https://semver.org/lang/zh-CN/)：

- **MAJOR** (主版本): 重大内容结构调整
- **MINOR** (次版本): 新增内容模块
- **PATCH** (补丁): 内容纠错、格式调整

## GitHub Pages 部署

如需将内容以网页形式展示：

### 自动部署

1. 进入仓库 **Settings** > **Pages**
2. **Source**: 选择 `Deploy from a branch`
3. **Branch**: 选择 `main` / `master`，目录选择 `/ (root)` 或 `/docs`
4. 保存后等待部署完成

### 使用 MkDocs（可选）

如需更好的文档展示效果：

```bash
# 安装 MkDocs
pip install mkdocs-material

# 本地预览
mkdocs serve

# 构建
mkdocs build

# 部署到 GitHub Pages
mkdocs gh-deploy
```

**mkdocs.yml 配置示例：**

```yaml
site_name: 项目名称
theme:
  name: material
  language: zh
  palette:
    primary: indigo
    accent: indigo
nav:
  - 首页: index.md
  - 内容目录:
    - 子目录: content/
```

## 内容维护

### 定期检查

- **链接有效性**: 每月检查外部链接是否失效
- **内容时效性**: 季度审查内容是否需要更新
- **资源完整性**: 确认图片/附件正常加载

### 内容归档

过时但有参考价值的内容移至 `archive/` 目录：

```
archive/
├── 2024/
│   └── old-report.md
└── 2025/
    └── deprecated-guide.md
```

## 常见问题

### 图片不显示

1. 检查图片路径是否正确（相对路径 vs 绝对路径）
2. 确认图片文件已提交到仓库
3. GitHub 有文件大小限制（建议单文件 < 25MB）

### 中文乱码

1. 确保文件编码为 UTF-8
2. 检查编辑器编码设置
3. Git 配置：`git config --global core.quotepath false`

### 大文件管理

对于视频、大图等资源文件：

```bash
# 使用 Git LFS
git lfs install
git lfs track "*.mp4"
git lfs track "*.psd"
git add .gitattributes
```

---

如有问题，请提交 [Issue](../../issues)。
