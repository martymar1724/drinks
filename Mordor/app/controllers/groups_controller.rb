class GroupsController < ApplicationController

	def index 
	  	@groups = Group.all
	end

	def new
		@groups = Group.new
	end

	def create
		@group = Group.new(group_params) 
		@group.user_id = current_user.id if current_user
		  	if @group.save 
		   		redirect_to '/services' 
		 	else 
		 		render 'new' 
			end 
	end




	private 
  		def group_params 
    	params.require(:group).permit(:user_id) 
  	end

end
