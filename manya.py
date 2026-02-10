import mysql.connector
host="localhost"
user="root"
password="ROOT123"
db="student_db"
conn=mysql.connector.connect(host=host,user=user,password=password,db=db)
cur=conn.cursor()
cur.execute("select*from students")
res=cur.fetchone()
print(res)