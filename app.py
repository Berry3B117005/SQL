import sqlite3

conn = sqlite3.connect('movies.db')
cursor = conn.cursor()

cursor.execute('SELECT * FROM "app_info";')

# 取得所有查詢結果
records = cursor.fetchall()

print(records)

cursor.close()
conn.close()