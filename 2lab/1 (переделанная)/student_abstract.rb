class Student_abstract
  attr_reader :id, :git
  #private_class_method :new

  def self.any_contact(hash: {},phone: nil, email: nil, telegram: nil)
    if hash["phone"] != nil then return hash["phone"] end
    if hash["email"] != nil then return hash["email"] end
    if hash["telegram"] != nil then return hash["telegram"] end
    if phone != nil then return "phone: #{phone}" end
    if email != nil then return "email: #{email}" end
    if telegram != nil then return "telegram: #{telegram}" end
    return nil
  end

end
