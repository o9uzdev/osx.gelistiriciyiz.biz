---
title: Terminal’den ekranı LOCK etmek
date: Apr 06, 2012 11:08
tags: osx
---
Yapmanız gereken;

```bash
/System/Library/CoreServices/Menu\ Extras/User.menu/Contents/Resources/CGSession -suspend
```

komutunu çalıştırmak. Bu komut için `alias` oluşturun:

```bash
alias lock_screen="/System/Library/CoreServices/Menu\ Extras/User.menu/Contents/Resources/CGSession -suspend"
```