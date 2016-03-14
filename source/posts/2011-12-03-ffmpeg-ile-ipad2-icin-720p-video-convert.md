---
title: ffmpeg ile iPad2 için 720p video convert
date: Dec 03, 2011 18:07
tags: unix,ffmpeg,ipad2
---

```bash
ffmpeg -i INPUT.mkv -acodec libfaac -ar 48000 -ab 160k -ac 2 -vcodec libx264 -b 1024k -aspect 16:9 -s 1280x720 OUTPUT.m4v
```

**INPUT** videosunun **720p** ve **mkv** olması gerekiyor...