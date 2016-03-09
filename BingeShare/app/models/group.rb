class Group < ActiveRecord::Base

	has_many :services
	belongs_to :user
end
