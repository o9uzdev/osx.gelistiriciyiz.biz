---
title: Disk Utility kullanmadan USB Stick’i partion yapmak
date: Mar 14, 2016 11:15
tags: el-capitan,partition,disk
subtitle: Terminal gücü!
# published: false
cover: "old-disk-utility.png"
# author:
#   name: 
#   email:
#   link:
#   bio:
---
Ne yazıkki, [OS X El Capitan][link] ile birlikte o alıştığımız **Disk Utility**
yerinde yeller esiyor.READ_MORE

İlginç bir şekilde Apple, tasarımını güzelleştirdiği tool’un kullanımını da
inanılmaz derecede garip ve imkansız hale getirdi.

Elimde, 64 Gigabyte’lık USB disk var, amacım bunu **2 partition** yapmak,
**MBR** (*Master Boot Record*) partition map olacak, 48 Gigabyte’ı **FAT**,
kalanı da **Mac OS Extended (Journaled)** olsun.

Önce USB stick’i takıp, aldığı cihaz numarısını bulalım:

```bash
diskutil list
```

Örnek çıktı:

    /dev/disk0 (internal, physical):
       #:                       TYPE NAME                    SIZE      IDENTIFIER
       0:      GUID_partition_scheme                        *1.0 TB    disk0
       1:                        EFI EFI                     209.7 MB  disk0s1
       2:          Apple_CoreStorage Macintosh HD            999.7 GB  disk0s2
       3:                 Apple_Boot Recovery HD             650.0 MB  disk0s3
    /dev/disk1 (internal, virtual):
       #:                       TYPE NAME                    SIZE      IDENTIFIER
       0:                  Apple_HFS Macintosh HD           +999.3 GB  disk1
                                     Logical Volume on disk0s2
                                     823F2780-E3E4-4D7D-B541-48DC563BB1B6
                                     Unencrypted
    /dev/disk2 (external, physical):
       #:                       TYPE NAME                    SIZE      IDENTIFIER
       0:     FDisk_partition_scheme                        *62.4 GB   disk2
       1:                  Apple_HFS Untitled                62.4 GB   disk2s1

Dikkat etmem gereken şey **external, physical** olan disk’i bulmak,
**internal, physical** olan direkt olarak bilgisayarın içindeki diskler!

`/dev/disk2` benim USB... Şimdi rahat rahat partition yapayım:

```bash
diskutil partitionDisk disk2 2 MBR MS-DOS TM48 48G jhfs+ TM16 R
```

`partitionDisk disk2 2` yani cihaz numarası **disk2** olan aygıtı **2**
partition yap. `MBR` olsun (*Master Boot Record*), `MS-DOS TM48 48G`
ilk partition’ın adı **TM48** olsun ve **48 Gigabyte** olsun,
kalanı da (*R Remaining anlamında*) **Mac OS Extended (Journaled)**
olsun, adı da **TM16** olsun `jhfs+ TM16 R`

Aynı mantık external takılmış disk(ler) için de geçerlidir...

[link]: https://en.wikipedia.org/wiki/OS_X_El_Capitan