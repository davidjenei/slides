# Requirements

    sudo apt-get install --no-install-recommends texlive-latex-base \
              texlive-latex-recommended texlive-pictures pandoc make \
              python3-pywatchman

# Try lua filters with fenced divs?

```
function Div(el)
  if el.classes:includes("centered") then
    return pandoc.RawBlock('latex', '\\begin{center}') .. el.content .. pandoc.RawBlock('latex', '\\end{center}')
  end
end
```

```
pandoc yourfile.md --lua-filter=center-div.lua -o output.pdf
```


# Useful links

* [Unsplash](https://unsplash.com/)
* [Design custom beamer theme from scratch](https://tex.stackexchange.com/questions/146529/design-a-custom-beamer-theme-from-scratch?rq=1)
