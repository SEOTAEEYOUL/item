import sqlite3
import os

# 환경 변수에서 데이터베이스 연결 정보 읽어오기
db_server        = os.environ.get('DB_SERVER')
db_port          = os.environ.get('DB_PORT')
database         = os.environ.get('DATABASE')
db_user_id       = os.environ.get('DB_USERNAME')
db_user_password = os.environ.get('DB_PASSWORD')

db_user_id       = db_user_id.strip( )
db_user_password = db_user_password.strip( )


print(f'sqllite3.connect({db_server}:{db_port}/{database}, {db_user_id}, {db_user_password}')

# 데이터베이스 연결
conn             = sqlite3.connect(f'{db_server}:{db_port}/{database}', db_user_id, db_user_password)

# 커서 생성
cursor = conn.cursor( )

# SQL 파일 읽기
sql_file   = open('tutorial_book.sql', 'r')
sql_script = sql_file.read( )
sql_file.close()

# SQL 스크립트 실행
cursor.executescript(sql_script)

# 변경사항 커밋
conn.commit()

# 연결 종료
conn.close()