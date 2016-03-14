---
title: "mplayer ve mencoder"
date: Oct 04, 2009 00:16
tags: ports,unix
---
[Mplayer OS X](https://sourceforge.net/projects/mplayerosx/files/)’i indirin.

Eğer Macports kuruluysa; `/opt/local/bin/` değilse; `/usr/local/bin/`
dizini altına kopyalayın. Terminal'den;

```bash
# eğer macports varsa;
sudo cp mplayer mencoder /opt/local/bin

# yoksa
sudo cp mplayer mencoder /usr/local/bin
```