load('student_abstract.rb')

class Student < Student_abstract
	attr_reader :phone, :id, :last_name, :first_name, :patronymic, :telegram, :email, :git
	
	def initialize(last_name:,first_name:,patronymic:, id: nil, phone: nil, telegram: nil, email: nil, git: nil)
		self.last_name= last_name
		self.first_name= first_name
		self.patronymic= patronymic
		self.id= id
		self.phone= phone
		self.telegram= telegram
		self.email= email
		self.git= git
	end

	def self.from_s(s)
		hash = s.split(", ").map {|i| i.split(": ")}.to_h
		Student.new(last_name: hash["last_name"], first_name: hash["first_name"], patronymic: hash["patronymic"], id: hash["id"], phone: hash["phone"], telegram: hash["telegram"], email: hash["email"], git: hash["git"])
	end
	
	def to_s
		"ID: #{@id}, Фамилия: #{@last_name}, Имя: #{@first_name}, Отчество: #{@patronymic}, Телефон: #{@phone}, Телеграм: #{@telegram}, Почта: #{@email}, Гит: #{@git}"
	end

	def self.phone_valid?(phone)
		phone.match /\A\+?\d{11}\z/
	end

	def phone= (phone)
		if !phone.nil? and Student.phone_valid?(phone)==nil then raise ArgumentError,"Invalid phone number" end
		@phone = phone
	end

	def self.id_valid?(id)
		id.to_s.match /^[0-9]+$/
	end

	def id= (id)
		if !id.nil? and Student.id_valid?(id)==nil then raise ArgumentError,"Invalid ID" end
		@id=id
	end

	def self.name_valid?(name)
		name.match /^[A-Z][^A-Z\d]+$/
	end

	def last_name= (last_name)
		if !last_name.nil? and Student.name_valid?(last_name)==nil then raise ArgumentError,"Invalid last name" end
		@last_name=last_name
	end

	def first_name= (first_name)
		if !first_name.nil? and Student.name_valid?(first_name)==nil then raise ArgumentError,"Invalid first name" end
		@first_name=first_name
	end

	def patronymic= (patronymic)
		if !patronymic.nil? and Student.name_valid?(patronymic)==nil then raise ArgumentError,"Invalid patronymic" end
		@patronymic=patronymic
	end

	def self.telegram_valid?(telegram)
		telegram.match /^[\w\d\s]+$/
	end

	def telegram= (telegram)
		if !telegram.nil? and Student.telegram_valid?(telegram)==nil then raise ArgumentError,"Invalid telegram" end
		@telegram=telegram
	end

	def self.email_valid?(email)
		email.match /^[\d\w]+\@gmail.com$/
	end

	def email= (email)
		if !email.nil? and Student.email_valid?(email)==nil then raise ArgumentError,"Invalid email" end
		@email=email
	end

	def self.git_valid?(git)
		git.match /^[\d\w]+$/
	end

	def git= (git)
		if !git.nil? and Student.git_valid?(git)==nil then raise ArgumentError,"Invalid git" end
		@git=git
	end

	def git_valid?
		self.git != nil
	end

	def contacts_valid?
		self.phone != nil or self.email != nil or self.telegram != nil
	end

	def validate
		git_valid? and contacts_valid?
	end

    def set_contacts(phone: nil, telegram: nil, git: nil)
		self.phone= phone
		self.telegram= telegram
		self.email= email
    end

    def first_contact
    	if self.phone != nil then return "phone: #{self.phone}" end
    	if self.email != nil then return "email: #{self.email}" end
    	if self.telegram != nil then return "telegram: #{self.telegram}" end
    	return nil
    end

    def getInfo
    	"fullname: #{self.last_name} #{self.first_name[0]}. #{self.patronymic[0]}., #{if git_valid? then "git: #{self.git}, " end}#{first_contact}"
    end

end

student1 = Student.new(last_name: "Gradel", first_name: "Alexander", patronymic: "Olegоvich", phone: "+79182522066", id: 1, telegram: "gradel1", email: "gradel1@gmail.com", git: "gradel1")

#p Student.phone_valid?("+79183121065")
#puts student1
#student1.set_contacts(telegram: "test")
#puts student1
#student2 = Student.from_s("last_name: Gradel, first_name: Oleg, patronymic: Olegоvich")
puts student1.getInfo
