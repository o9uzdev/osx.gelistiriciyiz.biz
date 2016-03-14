---
title: "`screen`’i deamon şeklinde çalıştırmak"
date: Nov 16, 2012 16:01
tags: unix,screen
---
Örneğin; `sass` dinleme işini `screen`’e atmak istiyorsunuz?READ_MORE

```bash
# screen -dmS SCREEN_ADI CLI KOMUT
screen -dmS sass_scr sass --watch path/to/scss:path/to/css --style expanded
```
**named screen** olduğu için kapatmak da kolay:

```bash
screen -S sass_scr -X quit
```