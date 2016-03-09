class GroupsController < ApplicationController

	  #before_action :require_user, only: [:index, :show]	

	  def index
	    @groups = Group.all
	  end
	  
	  def show 
	    @group = Group.find(params[:id]) 
	    @services = @group.services 
	  end

	  def edit 
	  	@group = Group.find(params[:id]) 
	  end

	  def update 
	  	@group = Group.find(params[:id]) 
	  	if @group.update_attributes(group_params) 
	  		redirect_to(:action => 'show', :id => @group.id) 
	  	else
	  		render 'edit'
	  		end
	  	end

	   
	  def group_params 
	    params.require(:group).permit(:name, :description) 
	  end

end
