class Student
  def initialize(last_name,first_name,patronymic)
    @Last_name, @First_name, @Patronymic = last_name, first_name, patronymic
  end

  def ID= (id)
    @ID=id
  end

  def ID
    @ID
  end
  
  def Last_name= (last_name)
    @Last_name = last_name
  end
  
  def Last_name
    @Last_name
  end
  
  def First_name= (first_name)
    @First_name = first_name
  end

  def First_name
    @First_name
  end
  
  def Patronymic= (patronymic)
    @Patronymic = patronymic
  end
  
  def Patronymic
    @Patronymic
  end

  def Phone= (phone)
    @Phone=phone
  end

  def Phone
    @Phone
  end

  def Telegram= (telegram)
    @Telegram=telegram
  end

  def Telegram
    @Telegram
  end

  def Email= (email)
    @Email = email
  end

  def Email
    @Email
  end

  def Git= (git)
    @Git = git
  end

  def Git
    @Git
  end

  def status
    "ID: #{@ID}, Фамилия: #{@Last_name}, Имя: #{@First_name}, Отчество: #{@Patronymic}, Телефон: #{@Phone}, Телеграм: #{@Telegram}, Почта: #{@Email}, Гит: #{@Git}\n"
  end
end
