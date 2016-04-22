class Service < ActiveRecord::Base

	serialize :members
	belongs_to :user
	belongs_to :group

end
