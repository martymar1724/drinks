class User < ActiveRecord::Base

	has_secure_password 
	has_many :services
	belongs_to :group

	validates :email, uniqueness: true

end
