load('student.rb')
load('student_abstract.rb')

class Student_short < Student_abstract
	attr_reader :fullname, :contact

	def initialize(fullname:, git: nil, contact: nil, id: nil)
		@id = id
		@fullname = fullname
		@git = git
		@contact = contact
	end

	def self.from_student(student)
		Student_short.new(id: student.id, fullname: "#{student.last_name} #{student.first_name[0]}. #{student.patronymic[0]}.", git: student.git, contact: student.first_contact)
	end

	def self.from_s(s,id)
		hash = s.split(", ").map {|i| i.split(": ")}.to_h
		if git_valid?(hash["git"])
			Student_short.new(fullname: hash["fullname"], id: id, git: hash["git"], contact: Student_abstract.any_contact(hash))
		end
	end

end

student = Student_short.from_s("fullname: Градель А.О., git: gradel1, phone: 79183333333",10)
puts student.contact
