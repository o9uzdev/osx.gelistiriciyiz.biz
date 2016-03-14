---
title: "Snow Leopard, Macports, Python, Pip, PostgreSQL ve Psycopg2"
date: Oct 11, 2011 16:57
tags: snow-leopard,python,postgresql,macports
---

`pip` üzerinden PostgreSQL driver’ı [Psycopg2](https://pypi.python.org/pypi/psycopg2) 
kurmadan önce mutlaka **PostgreSQL**’in kurulu olması gerekiyor. Macports, 
Python 2.7+ ve Pip’in kurulu olduğunu varsayıyorum:READ_MORE

```bash
sudo port install postgresql90-server
```

install işleminden sonra default database oluşturmak gerekiyor;

```bash
sudo mkdir -p /opt/local/var/db/postgresql90/defaultdb
sudo chown postgres:postgres /opt/local/var/db/postgresql90/defaultdb
sudo su postgres -c '/opt/local/lib/postgresql90/bin/initdb -D /opt/local/var/db/postgresql90/defaultdb'
```

bu işlem bittikten sonra hemen PostgreSQL ile ilgili `bin/` folder’ını sistem 
path’ine eklemeniz gerekir:

```bash
export PATH=/opt/local/lib/postgresql90/bin:$PATH
```

bu işlemden sonra; **Environment**’ınızı yenileyin (*çeşitli yolları var, en kolayı Terminal’i açıp kapatmak!*)

PostgreSQL’i başlatmak için;

```bash
sudo su postgres -c 'pg_ctl start -D /opt/local/var/db/postgresql90/defaultdb'
```

yapabilirsiniz. PostgresSQL’e root olarak bağlanamadığınız için, 
`postgres` kullanıcısıyla bağlanmanız gerekiyor. İsterseniz başka user oluşturup 
ayarlayabilirsiniz. PostgreSQL kullanıcısı olarak şifre ayarı yapalım:

```bash
sudo su postgres
psql # artık postgres’in içindeyiz!

ALTER USER postgres WITH PASSWORD 'ŞİFRENİZ';
CREATE DATABASE DATABASE_ADI;
```

Faydalı alias’lar:

```bash
alias postgres_start="sudo su postgres -c 'pg_ctl start -D /opt/local/var/db/postgresql90/defaultdb'"
alias postgres_stop="sudo su postgres -c 'pg_ctl stop -D /opt/local/var/db/postgresql90/defaultdb -m fast'"
alias postgres_status="sudo su postgres -c 'pg_ctl status -D /opt/local/var/db/postgresql90/defaultdb'"
```

Bu işlemlerden sonra gönül rahatlığıyla `pip` üzerinden **Psycopg2**’yi 
kurabilirsiniz:

```bash
sudo pip install psycopg2
```