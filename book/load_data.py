import mysql.connector
import os

# 환경 변수에서 데이터베이스 연결 정보 읽어오기
db_server        = os.environ.get('DB_SERVER')
db_port          = os.environ.get('DB_PORT')
database         = os.environ.get('DATABASE')
db_user_id       = os.environ.get('DB_USERNAME')
db_user_password = os.environ.get('DB_PASSWORD')

db_user_id       = db_user_id.strip( )
db_user_password = db_user_password.strip( )

print(f'conn = mysql.connector.connect(host={db_server},\nport={db_port},\ndatabase={database},\nuser={db_user_id},\npasword= {db_user_password}')

# MySQL 연결 설정
conn = mysql.connector.connect(
    host=db_server,
    port=db_port,
    user=db_user_id,
    password=db_user_password,
    database=database
)

# 커서 생성
cursor = conn.cursor()

# SQL 파일 읽기
sql_file = open('tutorial_book.sql', 'r')
sql_script = sql_file.read()
sql_file.close()

# SQL 스크립트 실행
# multi=True : 다중 쿼리를 실행 
cursor.execute(sql_script, multi=True)

# 변경사항 커밋
conn.commit()

# 테이블 스키마 조회
print("테이블 스키마 조회")
cursor.execute("DESCRIBE Books")
schema = cursor.fetchall()
print("Books table schema:")
for column in schema:
    print(column[0], column[1], column[2])

# Books 테이블 조회
cursor.execute("SELECT * FROM Books")
result = cursor.fetchall()
for row in result:
    print(row)

# 건수 조회
cursor.execute("SELECT COUNT(*) FROM Books")
count = cursor.fetchone()[0]
print("Total records in Books table:", count)


# 연결 종료
conn.close()
