# st —— Simple Terminal

## Brief Introduction

### Motivation

xterm is bloated and unmaintainable. Here's an excerpt from the README:

Abandon All Hope, Ye Who Enter Here


This is undoubtedly the most ugly program in the distribution. It was one of the first "serious" programs ported, and still has a lot of historical baggage. Ideally, there would be a general tty widget and then vt102 and tek4014 subwidgets so that they could be used in other programs. We are trying to clean things up as we go, but there is still a lot of work to do.

Needless to say things have not changed, it's still ugly. It has over 65K lines of code and emulates obscure and obsolete terminals you will never need.

The popular alternative, rxvt has only 32K lines of code. This is just too much for something as simple as a terminal emulator; it's yet another example of code complexity.

Terminal emulation doesn't need to be so complex.

### Status

- 大多数VT10X转义序列 
- 串行线支持
- XIM支持
- utmp通过utmp（1）
- 剪贴板处理
- 鼠标和键盘快捷键（通过config.h）
- UTF-8 
- 宽字符支持
- 调整大小
- 256种颜色和 真实颜色
- 抗锯齿字体（使用fontconfig）
- 后备字体
- 画线

### Configuration

Configuration is done with config.h. Read the comments in the generated config.h to edit it according to your needs. Defaults are stored in config.def.h.


配置是通过config.h完成的。阅读生成的config.h中的注释，根据需要对其进行编辑。默认值存储在config.def.h中。

### FAQ

The FAQ is maintained in the st source code repository.

FAQ保存在st源代码存储库中。

## Use

```angular2html
cd st
mv patches/*.diff ../st
mv st-copyout ../st
```

## Install
```angular2htm
sudo make clean install
```

### 问题
##### 部分ArchLinux配置的系统，可能会出现文字问题，这个每个人的系统字体不一样，自行更改
