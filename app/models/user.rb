class User < ApplicationRecord
#before_save {email.downcase!}
#validates :firstname, :presence => true, :uniqueness => true, :length => {:in => 3..20} 
#validates :lastname, :presence => true, :uniqueness => true, :length => {:in => 3..20}
#			VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(?:\.[a-z\d\-]+)*\.[a-z]+\z/i
#    validates :email, presence: true, format: { with: VALID_EMAIL_REGEX },
 #                   uniqueness: { case_sensitive: false }
	#has_secure_password
	#attr_accessor :password
	#attr_accessible :name, :email, :password, :password_confirmation
	
#	validates :password, presence: true, length: {minimum: 6}
#	validates :password, confirmation: true
	
end
