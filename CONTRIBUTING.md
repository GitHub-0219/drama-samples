# Contributing Guide

感谢您对本项目的关注！我们欢迎任何形式的贡献。

## 📋 目录

- [项目结构](#项目结构)
- [内容规范](#内容规范)
- [Git 工作流](#git-工作流)
- [提交 Pull Request](#提交-pull-request)
- [Issue 提交规范](#issue-提交规范)

## 项目结构

```
├── README.md           # 项目说明
├── docs/               # 文档目录
├── assets/             # 素材资源
└── ...                 # 项目内容文件
```

## 内容规范

### 文件命名

- 使用小写英文 + 连字符命名
- 示例: `market-analysis-q1-2025.md`
- 图片资源放在 `assets/` 目录下

### 文档格式

- 使用 Markdown 格式
- 标题层级不超过 4 级
- 图片添加 alt 文本
- 表格对齐整齐
- 中英文之间加空格

### 内容质量

- 数据来源需标注
- 引用内容需注明出处
- 定期更新过时信息
- 保持客观中立的表述

## Git 工作流

### 分支命名

| 分支类型 | 命名格式 | 用途 |
|----------|----------|------|
| 主分支 | `main` / `master` | 正式发布内容 |
| 内容分支 | `content/<描述>` | 新增/更新内容 |
| 文档分支 | `docs/<描述>` | 文档更新 |

### Commit 规范

遵循 [Conventional Commits](https://www.conventionalcommits.org/) 规范：

```
<type>(<scope>): <subject>
```

| Type | 说明 |
|------|------|
| `content` | 内容新增/更新 |
| `docs` | 文档更新 |
| `style` | 格式调整 |
| `fix` | 内容纠错 |
| `chore` | 其他维护 |

**示例：**

```bash
git commit -m "content(market): add Q1 2025 analysis report"
git commit -m "fix(data): correct revenue figures in report"
```

## 提交 Pull Request

1. Fork 仓库并创建内容分支
2. 完成内容编辑并自检
3. 推送到远程并创建 PR
4. 填写变更说明
5. 等待审核合并

### PR 描述模板

```markdown
## 变更说明

简要描述本次内容变更。

## 变更类型

- [ ] 新增内容
- [ ] 更新内容
- [ ] 纠错修正
- [ ] 格式调整

## 自检清单

- [ ] 内容准确性已核实
- [ ] 格式规范已遵守
- [ ] 引用来源已标注
```

## Issue 提交规范

### 内容纠错

```markdown
## 问题描述
清晰描述发现的内容错误。

## 位置
指出错误所在文件和行号。

## 正确内容
提供正确的信息或参考来源。
```

### 内容建议

```markdown
## 建议内容
描述希望新增或改进的内容。

## 理由
说明该内容的价值和必要性。
```

---

感谢您的贡献！🎉
