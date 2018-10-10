《Flex布局语法教程》
---

[TOC]
# 一、Flex布局是什么?
   Flex是Flexible Box的缩写，意为”弹性布局”，用来为盒状模型提供最大的灵活性。
   任何一个容器都可以指定为Flex布局。

```css
.box{
  display: flex;
}
```
行内元素也可以使用Flex布局。

```css
.box{
  display: inline-flex;
}
```
Webkit内核的浏览器，必须加上-webkit前缀。

```css
.box{
  display: -webkit-flex; /* Safari */
  display: flex;
}
```
==注意，设为Flex布局以后，子元素的float、clear和vertical-align属性将失效。==

# 二、基本概念 
采用Flex布局的元素，称为Flex容器（flex container），简称”容器”。它的所有子元素自动成为容器成员，称为Flex项目（flex item），简称”项目”。


# 三、容器的属性




# 四、项目的属性