---
title: "DVD video yedeğini ISO'ya çevirin"
date: May 19, 2010 12:32
tags: osx,hdiutil,udf,iso,dvd
---

DVD video yedeğinizi ISO formatına çevirmek için kullanabilirsiniz.
`~/Backup/MyVideo/VIDEO_TS` şeklinde bir yerede duran yedek için;

```bash
hdiutil makehybrid -udf -udf-volume-name MYDVD -o ~/Desktop/MyDvd.iso ~/Backup/MyVideo/

# ya da
hdiutil makehybrid -udf -udf-volume-name DVDNAME -o TARGET.iso SOURCE_PARENT_VIDEO_TS
```

şeklinde kullanabilirsiniz...
