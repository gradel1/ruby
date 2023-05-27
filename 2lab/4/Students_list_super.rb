#load('Students_list_JSON.rb')
#load('Student.rb')
#load('Student_short.rb')
#load('data_list.rb')
require_relative 'Students_list_JSON'
require_relative 'student'
require_relative 'Student_short'
require_relative 'data_list'


class Students_list_super

  def initialize(type_class)
    self.students = []
    self.type_class = type_class
  end

  def read_file(file_path)
    raise ArgumentError, 'File not found' unless File.exist?(file_path)
    list_hash = type_class.list_hash_from_str(File.read(file_path))
    self.students = list_hash.map {|st|
      hash = st.split(", ").map {|i| i.split(": ")}.to_h
      Student.new(last_name: hash["last_name"], first_name: hash["first_name"], patronymic: hash["patronymic"], id: hash["id"], phone: hash["phone"], telegram: hash["telegram"], email: hash["email"], git: hash["git"])
    }
  end

  def write_to_file(file_path)
    list_hash = students.map{|stud|stud.to_s}
    File.write(file_path, type_class.list_hash_to_str(list_hash))
  end

  def get_student_by_id(id)
    students.find {|st| st.id.to_i==id}
  end

  def get_k_n_student_short_list(page, n, data_list: nil)
    page_list = students[(page-1)*n, n].map{|st| Student_short.from_student(st)}
    return Data_list.new(page_list) if data_list.nil?
    data_list.append(page_list)
  end

  def sorted_by_name
    #students.map{|stud|stud.getInfo.split(", ").map {|i| i.split(": ")}.to_h["fullname"]}.sort
    students.sort_by do |st|
      [st.last_name,st.first_name]
    end
  end

  def add_student(student)
    begin
      student.id = students.sort_by(&:id).last.id+1
    rescue
      student.id = 1
    end
    students << student
  end

  def replace_student_by_id(student, st_id)
    id_student = students.find_index{|st| st.id==st_id}
    students[id_student] = student
  end

  def delete_student_by_id(st_id)
    students.delete_if {|st| st.id.to_i==st_id}
  end

  def get_student_count
    students.size
  end

  protected
  def students=(students)
    @students = students
  end

  def students
    @students
  end

  def type_class=(type_class)
    @type_class = type_class
  end

  def type_class
    @type_class
  end

end

#a = Students_list_super.new("Students_list_JSON")
#student1 = Student.new(last_name: "Gradel", first_name: "Blexander", patronymic: "Olegоvich", phone: "+79182522066", id: 1, telegram: "gradel1", email: "gradel1@gmail.com", git: "gradel1")
#student2 = Student.new(last_name: "Gradel", first_name: "Alexander", patronymic: "Olegоvichdddd", phone: "+79182522066", id: 3, telegram: "gradel1", email: "gradel1@gmail.com", git: "gradel1")
#a.students = [student1]
#p a.sorted_by_name
#a.add_student(student2)
#p a.sorted_by_name
#p a.get_student_count

a = Students_list_super.new(Students_list_JSON)
a.read_file("2 лаба/sds.yaml")
a.write_to_file("2 лаба/sd.yaml")
puts a.sorted_by_name

