class Data_list

  def initialize(elements)
    self.data= elements.sort
  end

  private

  def data=(data)
    @data = data
  end

  def data
    @data
  end

end