require 'sqlite3'
require_relative 'student'
require_relative 'Students_list_DB'

path = "2 лаба/students.db"
db = SQLite3::Database.new(path)

#create_table_script = File.read('2 лаба/create_students_table.sql')
#db.execute_batch(create_table_script)

#insert_data_script = File.read('2 лаба/insert_students_data.sql')
#db.execute_batch(insert_data_script)

query = 'SELECT * FROM students'
result = db.execute(query)
puts result

tst = Students_list_DB.instance(db)
#puts tst.get_by_id(1)
#tst_student = Student.new(last_name: "Sergeev", first_name: "Sergey", patronymic: "Sergeevich", telegram: "sergeev1")
#tst.insert(tst_student)
#tst.replace_by_id(2,tst_student)
#tst.delete_by_id(7)
count = tst.get_students_count[0][0]
puts tst.get_students(1,count)


db.close
