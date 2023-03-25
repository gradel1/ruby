load("student.rb")

student1 = Student.new(last_name: "Градель", first_name: "Александр", patronymic: "Олегович")
student2 = Student.new(last_name: "Григорьян", first_name: "Артуш", patronymic: "Артемович")
student3 = Student.new(last_name: "Сорока", first_name: "Никита", patronymic: "Андреевич")

puts student1.to_s
puts student2.to_s
puts student3.to_s
