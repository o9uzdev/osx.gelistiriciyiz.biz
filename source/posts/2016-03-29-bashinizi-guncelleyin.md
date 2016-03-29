---
title: "Bash’inizi güncelleyin"
date: Mar 29, 2016 22:37
tags: unix,brew,bash
subtitle: "Bash 3.2.57(1)-release’den kurtulalım"
# published: false
cover: 2016-03-29-bash-4.png
# author:
#   name: 
#   email:
#   link:
#   bio:
---

Apple, ne hikmetse, son 4 yıldır, işletim sistemi içinde gelen BASH’i
doğru dürüst güncellemedi.READ_MORE

Hep geriden geldi (*minimum 2 yıl*) ve yazıkki bizi **2014** yılının BASH 
sürümüyle çalışmak zorunda bırakıyor. İnanmazsanız [kontrol edin](https://ftp.gnu.org/gnu/bash/). Bu güncellemeyi
yapmak için [Homebrew](http://brew.sh) imdadımıza yetişiyor.

```bash
brew install bash

# kurulumdan sonra /etc/shells dosyasını açın
# en alta /usr/local/bin/bash ekleyin
sudo nano /etc/shells

# List of acceptable shells for chpass(1).
# Ftpd will not allow users to connect who are not using
# one of these shells.

/bin/bash
/bin/csh
/bin/ksh
/bin/sh
/bin/tcsh
/bin/zsh
/usr/local/bin/bash  # siz eklediniz

# kaydedip çıkın. kntrl + x
```

Şimdi son vuruşu yapıyoruz. Bu yeni kurduğunuz **shell**’i aktive edin:

```bash
chsh -s /usr/local/bin/bash $USER
```

şimdi Terminal’den çıkıp yeniden açın! Kontrol edin güncellendi mi?

```bash
echo $BASH_VERSION
4.3.42(1)-release # Mart 2016 itibariyle; 
```

Bu güncellemeyle `shopt` yani **Shell Options** neredeyse 2 katına çıkıyor.

    autocd         	off
    cdable_vars    	off
    cdspell        	off
    checkhash      	off
    checkjobs      	off
    checkwinsize   	on
    cmdhist        	on
    compat31       	off
    compat32       	off
    compat40       	off
    compat41       	off
    compat42       	off
    complete_fullquote	on
    direxpand      	off
    dirspell       	off
    dotglob        	off
    execfail       	off
    expand_aliases 	on
    extdebug       	off
    extglob        	on
    extquote       	on
    failglob       	off
    force_fignore  	on
    globstar       	off
    globasciiranges	off
    gnu_errfmt     	off
    histappend     	on
    histreedit     	off
    histverify     	off
    hostcomplete   	off
    huponexit      	off
    interactive_comments	on
    lastpipe       	off
    lithist        	off
    login_shell    	on
    mailwarn       	off
    no_empty_cmd_completion	off
    nocaseglob     	off
    nocasematch    	off
    nullglob       	off
    progcomp       	on
    promptvars     	on
    restricted_shell	off
    shift_verbose  	off
    sourcepath     	on
    xpg_echo       	off

**Associative Array** yani `key` / `value` kullanabileceğiniz `Array`
yapısı da ilk aklıma gelenlerden...