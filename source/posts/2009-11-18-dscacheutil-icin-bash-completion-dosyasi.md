---
title: "dscacheutil için bash-completion dosyası"
date: Nov 18, 2009 13:58
tags: unix,osx,bash-competion,ports
---

Macports kullanıcıları için; `/opt/local/etc/bash_completion.d/` altına bir 
dosya oluşturun;

```bash
cd /opt/local/etc/bash_completion.d/
sudo touch dscacheutil
```
sonra bu dosyayı favori text-editör’ünüzle açın (*shell için nano*)

```bash
sudo nano dscacheutil
```

Kod:

```bash
_dscacheutil() 
{
    local cur prev opts
    COMPREPLY=()
    cur="${COMP_WORDS[COMP_CWORD]}"
    prev="${COMP_WORDS[COMP_CWORD-1]}"
    opts="-flushcache -statistics -configuration -cachedump -h -q"
    if [[ ${cur} == -* ]] ; then
        COMPREPLY=( $(compgen -W "${opts}" -- ${cur}) )
        return 0
    fi
}
complete -F _dscacheutil dscacheutil
```

yukarıdaki kodu alıp dosyanın içine yapışıtın, kaydedip çıkın 
(`kntrl + w` ve sonra `kntrl + x`) Terminal’i yeniden başlatın 
(*komple kapatıp yeniden açın*). Şimdi `dscacheutil -[TAB]`

