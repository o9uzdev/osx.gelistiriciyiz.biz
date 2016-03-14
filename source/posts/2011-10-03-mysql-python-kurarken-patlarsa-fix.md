---
title: "MySQL-python kurarken patlarsa fix!"
date: Oct 03, 2011 10:55
tags: python,mysql
---
Öncelikle şunların kurulu olduğunu varsayıyorum;

* Macports
* pip (easy_install’dan)
* mysql5-server (ports’dan)

Python’dan MySQL Server’a bağlanmak için gereken driver’ın adı (paketin adı):
`MySQL-python`:
READ_MORE
```bash
sudo pip install MySQL-python
```

kurulum tam sonunda, **mysql_config not found** der ve patlar!

Macports’la `mysql-server5` kurduğunuzda, mysql5 ile ilgili her dosya **mysql5** 
keyword’ü ile başlar. Bu bakımdan `mysql_config` yerine sistemde 
`mysql_config5` bulunmaktadır. Yapmanız gereken alias oluşturmak:

```bash
sudo ln -s /opt/local/bin/mysql_config5 /opt/local/bin/mysql_config
```

bundan sonra tekrar kurulumu deneyin!

sudo pip install MySQL-python