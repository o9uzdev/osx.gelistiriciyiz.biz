---
title: "`memcache status`"
date: Nov 16, 2012 15:58
tags: development,memcache
---
```bash
echo 'stats' | nc 127.0.0.1 11211 # eğer çalışmıyorsa boş gelir
echo "stats" | nc 127.0.0.1 11211 | grep 'STAT pid' | awk '{ sub(/\r$/, ""); print $3 }' # eğer çalışıyorsa pid gelir
```