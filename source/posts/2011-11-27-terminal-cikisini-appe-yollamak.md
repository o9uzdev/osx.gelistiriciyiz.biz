---
title: "Terminal çıkışını App’e yollamak"
date: Nov 27, 2011 21:24
tags: osx
---
Bulunduğunuz folder’daki dosya listesini [TextMate](http://macromates.com)’e 
göndermek için:

```bash
ls | open -f -a TextMate
```

Bulunduğunuz folder’daki dosya listesini Clipboard’a atmak için:

```bash
ls | pbcopy
```