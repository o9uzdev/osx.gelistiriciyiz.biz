---
title: Atom 1.0.19′da ‘tree-view’ da gizli kalması gerekenler
date: Oct 29, 2015 10:43
tags: atom
cover: "2015-10-29-atom-1-0-19-cover.png"
---

Bildiğiniz gibi `.DS_Store`, `.git`, `.svn` gibi dosya ve dizinlerin ağaç 
yapısında görünmesi pek hoşumuza gitmez.READ_MORE

Atom editörün yeni versiyonunda, ayarlar kısmında default olarak 
(*Ignored Names*) kısmında;

<div class="full zoomable"><img src="/public/images/posts/2015-10-29-atom-1-0-19-element.png" alt="Atom 1.0.19 - Ayarlar - Dosya tipleri"></div>

dosyların/dizinlerin gizlendiği yazmasına rağmen bunun çalışmadığını gördüm.
Meğer asıl ayar Packages kısmından yapılıyormuş.

<div class="full zoomable"><img src="/public/images/posts/2015-10-29-atom-1-0-19-cover.png" alt="Atom 1.0.19 - Ayarlar"></div>

Hatta isterseniz, `.gitignore`da yazan dosyaların da görünmemesini 
**Hide VCS Ignored Files** ile sağlayabilirsiniz:


