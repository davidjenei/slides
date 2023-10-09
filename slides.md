---
title: Presentation title
subtitle: Presentation subtitle
author: David Jenei
theme: minimal
date: March 22, 2020
aspectratio: 169
---

Simple layout with text only
============================

Unordered list:
--------------

- Bullet text

Ordered list:
-------------

1. Collect underpants
2. ???
3. Profit!


> TODO: Fix these weird numbers

Fenced divs
==========

In pandoc, a Div starts with a fence containing at least three consecutive colons plus some
attributes.

```
::: columns
:::: {.column width=50%}

This column takes up half the space:

- Bullet text

::::

:::: column
![the other half can be an image](./leaves.jpg){height=50%}
::::
:::
```

Two column layout
=================

:::::::::::: columns
::: {.column width=50%}

This column takes up half the space:

- Bullet text

:::

::: column
![the other half can be an image](./leaves.jpg){height=50%}
:::
::::::::::::

{}
==================

- This is a slide without title.

Full slide image
=================

To create a full size image, use `\fullslideimage{image.jpg}`

- This custom LaTeX command is defined in `texheader.tex` which we pass to
Pandoc with the `--include-in-header` option.

- An image with 16:9 aspect ratio is required! To crop an image with ImageMagick
, use:

```bash
convert in.jpg -gravity center -crop 16:9 out.jpg
```

{.plain}
==================

\fullslideimage{./avocado169.jpg}

Some code
=========

```python
def foo():
    a = 10
    return 1

cars = ['ford', 'mercedes', 'bmw']
cars.reverse()

cars.count(cars)
```

{}
=======================

\center \huge Statement

{}
=======================

\huge "Notable quote"

\large This slide looks good without a title

{}
=======================

\centering
\huge

**100%**

\large

Fact information

Multiple pictures
=================

:::::::::::::: {.columns align=center}
::: {.column width="70%"}
![](./avocado.jpg){width=100%}
:::
::: {.column width="30%" align=center}
![](./avocado.jpg){height=40%}

\hfill

![](./avocado.jpg){height=40%}
:::
::::::::::::::
