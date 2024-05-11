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


# init_data.sql 파일 경로
sql_file = "tutorial_book.sql"

try:
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

    # 테이블 스키마 조회
    print("0. 테이블(Books) 스키마 조회")
    cursor.execute("DESCRIBE Books")
    schema = cursor.fetchall()
    print("   Books table schema:")
    for column in schema:
        print(column[0], column[1], column[2])


    # 건수 조회
    print("0. 건수 조회")
    cursor.execute("select COUNT(*) from Books")
    count = cursor.fetchone()[0]
    print(f'Total records in Books table: {count}')

    # Books 테이블 조회
    print(f'0. 테이블 내용 조회[{count}]')
    cursor.execute("select * from Books")
    result = cursor.fetchall()
    for row in result:
        print(row)

    # Books 테이블의 내용을 지우는 코드 추가
    print("1. Books 테이블 내용 삭제")
    cursor.execute("DELETE FROM Books")
    print("All records deleted from Books table")

    print('# 변경사항 커밋')
    conn.commit( )
    print("Data inserted successfully")

    print('# SQL 파일 읽기')
    with open(sql_file, 'r') as file:
        sql_script = file.read()
    # sql_file = open('tutorial_book.sql', 'r')
    # sql_script = sql_file.read()
    # sql_file.close()

    print('# SQL 스크립트 실행')
    # multi=True : 다중 쿼리를 실행 
    cursor.execute(sql_script, multi=True)

    print('# 변경사항 커밋')
    conn.commit( )
    print("Data inserted successfully")

    # 건수 조회
    print("2. 건수 조회")
    cursor.execute("select COUNT(*) from Books")
    count = cursor.fetchone()[0]
    print(f'Total records in Books table: {count}')

    # Books 테이블 조회
    print(f'3. 테이블 내용 조회[{count}]')
    cursor.execute("select * from Books")
    result = cursor.fetchall()
    for row in result:
        print(row)


except mysql.connector.Error as e:
    print(f"Error: {e}")
except Exception as e:
    conn.rollback( )
    raise e
finally:
    # 연결 종료
    print("9. 연결종료")
    if conn.is_connected():
        cursor.close()
        conn.close()
        print("Connection closed")
