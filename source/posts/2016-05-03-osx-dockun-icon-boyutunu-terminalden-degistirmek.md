---
title: "OS X Dock'un Icon Boyutunu Terminalden Değiştirmek"
date: May 03, 2016 22:22
tags: osx, dock, icon, terminal
subtitle: "Dock'un Icon Büyüklüğünü Terminalden Değiştirelim"
# published: false
# cover:
author:
  name: "Oguz Olmez"
  email: "ogzolmz@gmail.com"
  link: "http://www.oguzolmez.com.tr"
  bio: "Software Developer"
---
Dock'daki icon boyutunu terminal programını kullanarak değiştirebiliriz.READ_MORE

Öncelikle klavyemizden `command + space` tuşlarına basarak ekrana gelen `Spotlight Search`'e `terminal` yazıp terminal programını açıyoruz ve aşağıdaki komutu yazıp enter tuşuna basıyoruz.

```bash
defaults write com.apple.dock tilesize -int 32; killall Dock
```
Bu işlemden sonra Dock'un kapanıp açıldığını göreceksiniz.

Komutlar içerisinde görünen `32` rakamı icon boyutunu ifade etmektedir. Bu değeri arttırıp azaltarak kendinize uygun icon boyutunu ayarlayabilirsiniz.
