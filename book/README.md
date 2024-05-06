# Dump - Tutorial


## User 생성
```
mysql -h host -u admin -p
use mysql ;
create user 'tutorial'@'%' identified by 'tutorial' password expire never ;
grant all privileges on tutorial.* to 'tutorial'@'%';
select Host,User from user ;
```

## Dataloging
- tutorial_book.sql