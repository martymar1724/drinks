class ServicesController < ApplicationController

	#before_action :require_user, only: [:index, :show]
	
	def index
	  @services = Service.all
	end

	def new #display a form for a new record in DB
		#will have a template
		@service = Service.new
	end

	def create #save new record
		#will save and redirect
		@service = Service.new(service_params)

		if @service.save
			redirect_to(:action => 'index')
		else
			render 'new'
		end
	end


	def edit 
	  @service = Service.find(params[:id]) 
	end

	def show
		@group = Group.find(params[:id])
		@services = @group.services
	end

	def update 
	  @service = Service.find(params[:id]) 
	  if @service.update_attributes(service_params) 
	    redirect_to(:action => 'show', :id => @service.id) 
	  else 
	    render 'edit' 
	  end 
	end

	private 
	def service_params 
		params.require(:service).permit(:name, :user_login, :login_password) 
	end

end
