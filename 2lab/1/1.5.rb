class Student
  attr_accessor :ID, :Last_name, :First_name, :Patronymic, :Phone, :Telegram, :Email, :Git

  def initialize(last_name,first_name,patronymic, id: nil, phone: nil, telegram: nil, email: nil, git: nil)
    @Last_name, @First_name, @Patronymic = last_name, first_name, patronymic
    @ID, @Phone, @Telegram, @Email, @Git = id, phone, telegram, email, git
  end

  def status
    "ID: #{@ID}, Фамилия: #{@Last_name}, Имя: #{@First_name}, Отчество: #{@Patronymic}, Телефон: #{@Phone}, Телеграм: #{@Telegram}, Почта: #{@Email}, Гит: #{@Git}\n"
  end
end
