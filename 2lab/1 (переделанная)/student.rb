class Student
	attr_accessor :ID, :Last_name, :First_name, :Patronymic, :Phone, :Telegram, :Email, :Git
	
	def initialize(last_name:,first_name:,patronymic:, id: nil, phone: nil, telegram: nil, email: nil, git: nil)
		self.Last_name= last_name
		self.First_name= first_name
		self.Patronymic= patronymic
		self.ID= id
		self.Phone= phone
		self.Telegram= telegram
		self.Email= email
		self.Git= git
	end
	
	def to_s
		"ID: #{@ID}, Фамилия: #{@Last_name}, Имя: #{@First_name}, Отчество: #{@Patronymic}, Телефон: #{@Phone}, Телеграм: #{@Telegram}, Почта: #{@Email}, Гит: #{@Git}\n"
	end

end
