---
title: "TextMate + AppleScript ve Adobe"
date: May 10, 2010 21:32
tags: textmate,applescript,snow-leopard
---

Snow Leopard’da görülen bu sorun; ilgili [linkte](http://ticket.macromates.com/show?ticket_id=8AA8F517) 
tartışılmış çözümlenmiş...

```bash
cd /Library/ScriptingAdditions/
sudo tar cjf Adobe\ Unit\ Types.tar.bz2 Adobe\ Unit\ Types.osax
sudo rm -rf Adobe\ Unit\ Types.osax && sudo ln -s /dev/null ./Adobe\ Unit\ Types.osax
```

Bu sayede `cmd + b` ya da `cmd + r` işlemleri sorunsuz çalışacaktır. Snow Leopard’ın
`osascript`’i 64bit çalışıyormuş...