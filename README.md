# FZ Survival Mod (FZSD) · Forge 1.20.1

> 由原「FZ Survival 数据包 v3.1.14 (MC1.20-1.21.4)」移植而来的生存向 **Forge 1.20.1 模组**。
> 数据包内容 100% 完整保留，全部以函数/标签/进度形式封装进模组内部资源，无需另装数据包。

![Build](https://github.com/INORACLE/FZ-Survival-modpack/actions/workflows/build.yml/badge.svg)
[![License: GPL-3.0](https://img.shields.io/badge/License-GPL--3.0-blue.svg)](LICENSE)

- **Mod ID**：`fzsd`
- **版本**：3.1.14
- **Minecraft / Forge**：1.20.1 / Forge 47.x
- **Java**：17
- **License**：GPL-3.0

---

## ✨ 功能简介

本模组将原数据包的整套「生存玩法」完整带到 Forge 1.20.1，主要模块包括：

- **🌸 方块交互器 (Interactor)**：潜行 + 右键交互面板，一键开启各评分板/展示 (评分板交互器，需 OP2+ 权限，见下)。
- **📊 计分板展示 (Scoreboard)**：按类别 (击杀/挖掘/放置/交易/钓鱼/移动/受损/激活/死亡/破坏) 实时展示数据。
- **🌙 昼夜/时间 API**：`fzsd:module/scoreboard/api/get_current_daytime` 等查询函数。
- **🗂️ 全自动安装 (Install)**：首次加载自动注册计分板目标、队伍、Tag，`clear_data` 可一键重置。
- **🎯 兼容**：`admin.fzsd` 管理命名空间与 `fzsd.extra.bbl` (原附赠数据包) 一并收录。

---

## 🛠️ 本项目相对原数据包的定制

1. **移除「总榜 / 总览 (General)」计分板展示项**：保留所有分项榜单 (击杀/挖掘/放置/交易/钓鱼/移动/受损/激活/死亡/破坏)。
   - 已从轮播分发 tag、点击分配、面板按钮、交互器订阅中彻底移除，无残留悬挂引用。
2. **交互器改为 OP2+ 权限**：仅拥有 `fzsd.admin` Tag 的 OP2+ 管理员可使用交互器；非管理员会收到「权限不足」提示，无法触发。
   - 在其他普通权限水平下，交互器完全不可用，避免低权限玩家绕过限制。

---

## 🚀 使用 / 安装

### 从 GitHub Releases 下载
前往右侧 **Releases** 下载最新的 `fzsd-survival-3.1.14.jar`：

1. 安装 **Minecraft Java 版 (1.20.1)** + **Forge 47.x**。
2. 将下载的 `.jar` 放入 `.minecraft/mods/` 文件夹。
3. 启动游戏，进入世界后首次加载会自动完成数据包注册 (Install)。

### 游玩提示
- 交互器仅 **OP2+ 管理员** 可用；给自己加 OP 后在游戏内聊天输入：
  `/tag @s add fzsd.admin`（或直接 `op <你的名字> 2`）。
- 想重置数据：`/function fzsd:module/scoreboard/install/clear_data`（需 OP）。

---

## 🧑‍💻 从源码构建

要求：JDK 17。

```bash
# GitHub Actions 已托管构建，本地验证只需：
./gradlew build           # Linux/macOS
gradlew.bat build         # Windows
```

产物输出到 `build/libs/`：
- `fzsd-survival-3.1.14.jar` — 最终可安装模组。

> foojay resolver 自动化 JDK 17 工具链，无需硬编码 `org.gradle.java.home`，在 Windows/Linux/macOS 与 CI 上均可直接构建。

### 常见问题
- **JDK 版本**：Gradle 工具链自动使用 JDK 17；若本机默认 JVM 过新，设置 `JAVA_HOME` 指向 JDK 17 再运行。
- **首次构建速度慢**：需从 Maven 拉取 Minecraft/Forge 依赖，属正常现象。

---

## 📦 发布 (维护者)

本项目通过 GitHub Actions 自动构建并发布：

- 推送到 `main`：自动构建，jar 上传为构建产物。
- 推送形如 `v3.1.14` 的 **Tag**：自动构建 **并创建 GitHub Release**，附带 jar 下载。

```bash
git tag v3.1.14
git push origin v3.1.14
```

---

## 🗂️ 目录结构

```
├── .github/workflows/build.yml   # CI：构建 + 发布
├── build.gradle                  # ForgeGradle 构建脚本
├── settings.gradle               # foojay 工具链解析
├── gradle.properties             # 版本信息
└── src/main/
    ├── java/com/fzsd/survival/   # 模组入口 (FZSurvivalMod)
    └── resources/data/           # 全部数据包函数/标签/进度
        ├── fzsd/                 # 主命名空间
        ├── admin.fzsd/           # 管理命名空间
        └── fzsd.extra.bbl/       # 附赠数据包
```

---

## 📜 许可

[GPL-3.0](LICENSE)。基于原「FZ Survival 数据包」改编，版权归原作者。

---

## 🔗 相关

- 原数据包：`FZ Survival Data Pack v3.1.14 (MC1.20-1.21.4)`
- 上游仓库：[INORACLE/FZ-Survival-modpack](https://github.com/INORACLE/FZ-Survival-modpack)
