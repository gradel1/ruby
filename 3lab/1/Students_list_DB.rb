require 'sqlite3'

class Students_list_DB

  private_class_method :new

  def self.instance(db)
    @instance ||= new(db)
  end

  def initialize(db)
    @database_object = db
  end

  def get_by_id(id)
    @database_object.execute "select * from students where id=#{id}"
  end

  def get_students(k,n)
    @database_object.execute "select * from students limit #{k-1},#{n}"
  end

  def insert(object)
    values = object.to_hash
    query = "insert into students (last_name, first_name, patronymic, phone, telegram, email, git) values (?, ?, ?, ?, ?, ?, ?)"
    @database_object.execute(query, [values[:last_name],values[:first_name],values[:patronymic],values[:phone],values[:telegram],values[:email],values[:git]])
  end

  def replace_by_id(id,object)
    values = object.to_hash
    query = "update students set last_name = ?, first_name = ?, patronymic = ?, phone = ?, telegram = ?, email = ?, git = ? where id = ?"
    @database_object.execute(query,[values[:last_name],values[:first_name],values[:patronymic],values[:phone],values[:telegram],values[:email],values[:git],id])
  end

  def delete_by_id (id)
    @database_object.execute "delete from students where id=#{id}"
  end

  def get_students_count
    @database_object.execute "select count(*) from students"
  end

end
