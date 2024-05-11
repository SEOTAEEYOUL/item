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
    i = 0

    # MySQL [tutorial]> describe Books ;
    # +----------------+-------------+------+-----+---------+----------------+
    # | Field          | Type        | Null | Key | Default | Extra          |
    # +----------------+-------------+------+-----+---------+----------------+
    # | seqno          | int         | NO   | PRI | NULL    | auto_increment |
    # | title          | varchar(80) | NO   |     | NULL    |                |
    # | author         | varchar(50) | NO   |     | NULL    |                |
    # | price          | double      | NO   |     | 0       |                |
    # | published_date | date        | NO   |     | NULL    |                |
    # +----------------+-------------+------+-----+---------+----------------+
    # 5 rows in set (0.001 sec)


    print(f'    No Cloumn Name           Type                  Null  Key   Default  Extra')
    for column in schema:
        # i += 1
        # print(f'0    {i:2} {column[0]:<20}  {column[1]:<20}  {column[2]:<5} {column[3]:<5} {column[4]:<8} {column[5]:<15}')
        column3 =  ' '
        column4 =  'NULL'
        column5 =  ' '
        if column[3] is not None:
            column3 = column[3]
        if column[4] is not None:
            column4 = column[4]
        if column[5] is not None:
            column5 = column[5]

        print(f'    {i+1:2} {column[0]:<20}  {column[1]:<20}  {column[2]:<5} {column3:<5} {column4:<8} {column5:<15}')



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
    print('# Cursor Close')
    cursor.close( )

    print("")
    print("-----------------------------")
    print('# Cursor 신규 오픈')
    cursor = conn.cursor()

    print('# SQL 파일 읽기')
    # 파일에서 데이터 읽기 및 삽입
    with open('books_data.txt', 'r') as file:
        for line in file:
            data = line.strip().split(', ')
            title, author, price, published_date = data
            price = int(price)
            query = f"INSERT INTO Books (title, author, price, published_date) VALUES (%s, %s, %s, %s)"
            cursor.execute(query, (title, author, price, published_date))

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
