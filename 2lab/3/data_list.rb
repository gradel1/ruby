class Data_list

  def initialize(elements)
    self.data= elements
    self.selected= []
  end

  def select(number)
    selected << number unless selected.include?(number)
  end

  def get_selected
    selected_id = []
    selected.flatten.each do |i|
      selected_id << data[i].id
    end
    selected_id
  end

  #добавление в существующий объект для метода get_k_n_student_short_list класса Students_list_super
  def append(elements)
    data.append(elements)
  end

  def get_names
  end

  def get_data
  end

  protected

  def data=(data)
    @data = data
  end

  def data
    @data
  end

  def selected=(selected)
    @selected = selected
  end

  def selected
    @selected
  end

end
