# 考研数学一复习笔记

这是一份应试用考研数学一笔记，面向经历了一定数学训练但不擅长背诵和考试的人。

## 📖 适用人群

本笔记适合以下背景的读者：

- 曾接受过实分析和正经代数课程，了解诸如戴得金分割等分析基础以及线性代数的直观本质
- 能接受面向试题的、不完备的数学操作和论断，明白该资料的应试性

## 📝 使用方法

本笔记的使用方式是背诵，它包含了必背公式和大部分常见情况的应对方法。它不会尝试给您搭建任何的数学知识体系，它只会构建一个**考点-方法**体系。

如果把准备考研当作荒野求生，那么您需要自带一个成熟的本科入门级别的分析和代数方向的数学知识体系作为地图来指导自己的方向，而该笔记会成为您的瑞士军刀，帮您解决实际的每一个步骤。

## 📚 内容结构

- **微积分**：三角函数公式、极限与导数、一元积分、微分方程、中值定理、多元微分学、级数、空间解析几何
- **线性代数**：基础理论与计算方法
- **概率与统计**：概率论基础与数理统计

## 🔧 编译步骤

### 前提条件

确保您已安装 [Typst](https://typst.app/)。

### 编译命令

```bash
typst compile math.typ
```

如果您需要即时更新的编辑预览：

```bash
typst watch math.typ --root .
```

### 字体问题

如果编译时出现字体警告，可以：
1. 安装推荐字体：`Noto Serif CJK SC`（中文）和 `CaskaydiaCove NFM`（代码）
2. 或者忽略警告 - Typst 会自动使用系统默认字体

### 输出文件

编译成功后会生成 `math.pdf` 文件，这就是完整的考研数学一复习笔记。

## 🚀 快速开始

```bash
# 克隆仓库
gh repo clone Tinnci/kaoyan-shuxueyi
# 或者
git clone https://github.com/Tinnci/kaoyan-shuxueyi.git

# 进入目录
cd kaoyan-shuxueyi

# 编译生成PDF
typst compile math.typ
```

## 🛠️ 兼容性说明

本项目已针对较新版本的 Typst 进行了兼容性修复，解决了以下问题：
- 修复了过时的类型比较语法
- 简化了查询选择器以避免兼容性问题
- 确保与最新 Typst 版本的兼容性

## 🤝 贡献

欢迎提交 Issues 和 Pull Requests 来改进这份笔记！

## License & Reference

如无特殊说明, 本项目内容遵循 [CC BY-NC-SA](https://creativecommons.org/licenses/by-nc-sa/4.0/) 协议发布.

`assets` 中图片可能另有版权要求, 使用前请自行考察. 如侵犯了您的权利, 请新建 issue 告知.

本项目的模版部分 (`template.typ`) 修改自 [jskherman/jsk-lecnotes](https://github.com/jskherman/jsk-lecnotes).

