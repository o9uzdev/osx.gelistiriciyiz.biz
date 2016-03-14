---
title: "Finder’da full-path göster"
date: Aug 09, 2011 11:46
tags: finder
---

```bash
defaults write com.apple.finder _FXShowPosixPathInTitle -bool YES
killall Finder
```

![Finder ve Path](/public/images/posts/2011-08-9-finder-path.png)