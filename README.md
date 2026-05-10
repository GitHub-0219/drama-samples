# 🎥 短剧样片合集

![Samples](https://img.shields.io/badge/样片-5部-orange)
![Pet](https://img.shields.io/badge/宠物科普-✅-green)
![Audio](https://img.shields.io/badge/音频-含配音-blue)
![License](https://img.shields.io/badge/License-MIT-blue)

> 🔥 5 部最火风格短剧样片 + 宠物科普样片，包含完整音频、幻灯片与输出视频。

---

## ✨ 功能特性

| 模块 | 说明 |
|------|------|
| ⚔️ 玄幻风格 | 热门玄幻题材短剧样片 |
| 🗡️ 战神风格 | 战神归来题材短剧样片 |
| 🐾 宠物科普 | 萌宠科普教育样片 |
| 🎤 配音音频 | 完整的 AI 配音音频文件 |
| 🖼️ 幻灯片 | 分镜设计与视觉参考 |
| 🎬 输出视频 | 最终渲染的样片视频 |

---

## 🛠️ 技术栈

| 技术 | 用途 |
|------|------|
| FFmpeg | 视频处理与渲染 |
| AI TTS | 文字转语音配音 |
| 幻灯片工具 | 分镜设计与脚本可视化 |
| Markdown | 剧本与脚本文档 |

---

## 📁 项目结构

```
drama-samples/
├── 01-xuanhuan/            # ⚔️ 玄幻风格样片
│   ├── audio/              #   配音音频文件
│   ├── slides/             #   幻灯片/分镜设计
│   └── output/             #   最终输出视频
├── 02-zhanshen/            # 🗡️ 战神风格样片
│   ├── audio/
│   ├── slides/
│   └── output/
├── 03-pet-science/         # 🐾 宠物科普样片
│   ├── audio/
│   ├── slides/
│   └── output/
├── 04-xxx/                 # 📌 其他风格样片
│   ├── audio/
│   ├── slides/
│   └── output/
├── 05-xxx/                 # 📌 其他风格样片
│   ├── audio/
│   ├── slides/
│   └── output/
└── README.md
```

---

## 🚀 快速开始

```bash
# 克隆仓库
git clone https://github.com/GitHub-0219/drama-samples.git
cd drama-samples

# 查看样片列表
ls -la

# 播放某部样片视频（需安装 FFplay/VLC）
ffplay 01-xuanhuan/output/final.mp4

# 查看分镜幻灯片
open 01-xuanhuan/slides/
```

---

## 📸 截图

<!-- 请在此处添加样片截图 -->

| 玄幻样片 | 战神样片 | 宠物科普 |
|----------|----------|----------|
| ![玄幻](screenshots/xuanhuan.png) | ![战神](screenshots/zhanshen.png) | ![宠物](screenshots/pet.png) |

---

## 📄 License

本项目基于 [MIT License](LICENSE) 开源。