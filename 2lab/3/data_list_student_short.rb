load('Student_short.rb')
load('data_list.rb')
load('data_table.rb')
class Data_list_student_short < Data_list

  @@number = -1

  def get_data
    @@number+=1
    str=data[0]
    hash = str.split(', ').map{|el| el.split(': ')}.to_h
    attributes = []
    get_names.each {|el| attributes << hash[el]}
    Data_table.new([@@number]+attributes)
  end

  def get_names
    str=data[0]
    hash = str.split(', ').map{|el| el.split(': ')}.to_h
    hash.keys[1...hash.keys.length]
  end

end
