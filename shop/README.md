# Dump - SHOP


## User 생성
```
mysql -h hostname -u admin -p
use mysql ;
create user 'shop'@'%' identified by 'dlatl!00' password expire never ;
grant all privileges on shop.* to 'shop'@'%';
select Host,User from user ;
```

```
# mysql -h hostname -u admin -p
Enter password:
Welcome to the MariaDB monitor.  Commands end with ; or \g.
Your MySQL connection id is 95513
Server version: 8.0.23 Source distribution

Copyright (c) 2000, 2018, Oracle, MariaDB Corporation Ab and others.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

MySQL [(none)]> use mysql
Reading table information for completion of table and column names
You can turn off this feature to get a quicker startup with -A

Database changed
MySQL [mysql]> create user 'shop'@'%' identified by 'dlatl!00' password expire never ;
Query OK, 0 rows affected (0.01 sec)

MySQL [mysql]> grant all privileges on shop.* to 'shop'@'%';
Query OK, 0 rows affected (0.02 sec)

MySQL [mysql]> select Host,User from user ;
+-----------+-----------------------+
| Host      | User                  |
+-----------+-----------------------+
| %         | AWS_COMPREHEND_ACCESS |
| %         | AWS_LAMBDA_ACCESS     |
| %         | AWS_LOAD_S3_ACCESS    |
| %         | AWS_SAGEMAKER_ACCESS  |
| %         | AWS_SELECT_S3_ACCESS  |
| %         | admin                 |
| %         | rds_superuser_role    |
| %         | shop                  |
| %         | tutorial              |
| localhost | mysql.infoschema      |
| localhost | mysql.session         |
| localhost | mysql.sys             |
| localhost | rdsadmin              |
| localhost | tutorial              |
+-----------+-----------------------+
14 rows in set (0.00 sec)

MySQL [mysql]> exit
Bye
# mysql -h hostname -u shop -p
Enter password:
Welcome to the MariaDB monitor.  Commands end with ; or \g.
Your MySQL connection id is 95532
Server version: 8.0.23 Source distribution

Copyright (c) 2000, 2018, Oracle, MariaDB Corporation Ab and others.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

MySQL [(none)]> show tables ;
ERROR 1046 (3D000): No database selected
MySQL [(none)]> use shop
Reading table information for completion of table and column names
You can turn off this feature to get a quicker startup with -A

Database changed
MySQL [shop]> show tables ;
+--------------------+
| Tables_in_shop     |
+--------------------+
| cart               |
| cart_item          |
| hibernate_sequence |
| item               |
| item_img           |
| member             |
| order_item         |
| orders             |
+--------------------+
8 rows in set (0.00 sec)

MySQL [shop]> exit
Bye
[root@skcc-07456-p-is-tf-ec2-ops ~]#

```

## Dataloging
- shop_cart.sql
- shop_cart_item.sql
- shop_hibernate_sequence.sql
- shop_item.sql
- shop_item_img.sql
- shop_member.sql
- shop_orders.sql
- shop_order_item.sql
- shop_routines.sql