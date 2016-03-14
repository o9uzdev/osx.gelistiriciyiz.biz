---
title: "Desktop ikonlarını gizle/göster"
date: Jan 14, 2012 15:00
tags: osx
---
Screen capture/grab yaparken desktop’da duran ikonları gizlemek için:

```bash
defaults write com.apple.finder CreateDesktop -bool false;killall Finder;
```

Eski haline dönmek için:

```bash
defaults write com.apple.finder CreateDesktop -bool true;killall Finder;
```

Ben bu iki işlem için alias’lar yaptım:

```bash
alias desktop_hide="defaults write com.apple.finder CreateDesktop -bool false;killall Finder;"
alias desktop_show="defaults write com.apple.finder CreateDesktop -bool true;killall Finder;"
```