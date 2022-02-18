---
title: Presentation title
subtitle: Presentation subtitle
author: David Jenei
theme: minimal
date: March 22, 2020
aspectratio: 169
---

# Slide title

## Bullet title

- Bullet text

## Bullet title #2

- Another bullet text

# Slide title

::: columns
:::: {.column width=50%}
## Bullet title
- Bullet text
::::
:::: column
![picture of spaghetti](./leaves.jpg){height=50%}
::::
:::

#

- Slide bullet text

#
\center
![picture of spaghetti](./avocado.jpg){height=100%}\

# Slide title

Some super quickly created demo slides

* Do not need anything else than markdown
    * Slides title starts with # (also starts a new slide)
    * Bullet points, newlines, empty lines: all standard markdown
* However, can also use other stuff, e.g.:
    * Some HTML (e.g. \<center\>)
    * When using pandoc beamer, can use latex commands (e.g. \\center, \\large, etc)\dots

# Some code

```python
def foo():
    a = 10
    return 1

cars = ['ford', 'mercedes', 'bmw']
cars.reverse()

cars.count(cars)
```

#
\center \huge Statement

#
\huge "Notable quote"

\large Fact information

#
\center \huge
**100%**

\large Fact information

#
::: columns
:::: {.column width=60%}
![picture of spaghetti](./leaves.jpg){height=100%}
::::
:::: column
![picture of spaghetti](./avocado.jpg){height=40%}
![picture of spaghetti](./leaves.jpg){height=60%}
::::
:::



