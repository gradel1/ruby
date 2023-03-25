class Student
	attr_accessor :id, :last_name, :first_name, :patronymic, :phone, :telegram, :email, :git
	
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
	
	def to_s
		"ID: #{@id}, Фамилия: #{@last_name}, Имя: #{@first_name}, Отчество: #{@patronymic}, Телефон: #{@phone}, Телеграм: #{@telegram}, Почта: #{@email}, Гит: #{@git}"
	end

end

