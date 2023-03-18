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
end

grad = Student.new("Градель","Александр","Олегович")
grad.ID = 1
p grad.ID
