DROP TABLE IF EXISTS `Books`;

CREATE TABLE IF NOT EXISTS tutorial.Books
(
  seqno INT NOT NULL AUTO_INCREMENT,
  title VARCHAR(20) NOT NULL,
  author VARCHAR(20) NOT NULL,
  price DOUBLE NOT NULL DEFAULT 0,
  published_date DATE NOT NULL,
  PRIMARY KEY(SeqNo)
);

insert into Books (Title, Author, Price, published_date)
values ('TCP/IP 완벽 가이드', '강유,김혁진,...', 45000, '2021-12-01');
insert into Books (Title, Author, Price, published_date)
values ('NGINX Cookbook', '데릭 디용기', 20000, '2021-06-01');
insert into Books (Title, Author, Price, published_date)
values ('Learning CoreDNS', '존 벨라마릭,크리켓 리우', 25000, '2021-08-31');

insert into Books (Title, Author, Price, published_date) values
 ('마이크로 서비스 패턴', '크리스 리처든슨', 38000, '2020-01-30'),
 ('따라서 배우는 AWS 네트워크 입문', '김원일,서종호', 30900, '2020-10-06'),
 ('테라폼 업 앤 러닝', '예브게니 브릭만', 23000, '2021-04-30'),
 ('자연어 처리 쿡북 with 파이썬', '크리슈나바브사 외', 30000, '2019-01-31');