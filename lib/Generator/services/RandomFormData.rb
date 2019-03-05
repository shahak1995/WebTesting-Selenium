require 'faker'

class RandomFormData
  include Faker
  
  def first_name
    Name.first_name
  end

  def last_name
    Name.last_name
  end

  def date
    Date.backward(5).to_s
  end
end