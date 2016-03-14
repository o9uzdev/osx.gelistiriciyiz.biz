---
title: "FileVault, Apache2 ve şifrelenmiş folder"
date: Apr 13, 2011 22:53
tags: filevault,apache2
---

FileVault ile şifrelenmiş kullanıcı folder’ın **Apache2** web sunucusu 
tarafından görüntülenebilmesini sağlar:

```bash
chmod +a "_www allow search" /Users/KULLANICI_ADI
```