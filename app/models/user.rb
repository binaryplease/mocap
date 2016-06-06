class User
  include Mongoid::Document
  
  has_secure_password

end
