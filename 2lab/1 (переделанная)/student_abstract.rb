class Student_abstract
  attr_reader :id, :git
	private_class_method :new
  
  def self.any_contact(hash: {})
	if hash["phone"] != nil then return hash["phone"] end
      	if hash["email"] != nil then return hash["email"] end
      	if hash["telegram"] != nil then return hash["telegram"] end
      	if self.phone != nil then return "phone: #{self.phone}" end
    	if self.email != nil then return "email: #{self.email}" end
    	if self.telegram != nil then return "telegram: #{self.telegram}" end
      	return nil  
	end
         
end
