class User
	include ActiveModel::Validations
	include Mongoid::Document
	include ActiveModel::SecurePassword
	validates_uniqueness_of :username, message: 'user already exists', allow_nil: false, allow_blank: false	
	validates_length_of :password, minimum: 6, too_short: 'please enter at least 6 characters'

	#validates :username,
		#:uniquness => {:message => "user already exists"}
		

	field :username, type: String
	field :password_digest, type: String
	has_secure_password
end
