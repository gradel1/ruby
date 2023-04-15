load('student.rb')

class Student_short
	attr_reader :id, :fullname, :git, :contact

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
		Student_short.new(fullname: hash["fullname"], id: id, git: hash["git"], contact: hash["phone"])
	end

end

