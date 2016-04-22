class ServicesController < ApplicationController

	before_action :require_user, only: [:index, :show, :create, :edit]

	def index 
	  	#@services = Service.where(:user_id => current_user.id or :members => 2)
	  	@services = Service.where('member1=? OR member2=? OR member3=? OR member4=? OR user_id=?', current_user.id, current_user.id, current_user.id, current_user.id, current_user.id)
	  	#@services = Service.where(:member1 => current_user.id)
	  	#@services = Service.where(:member2 => current_user.id)
	  	#@services = Service.where(:member3 => current_user.id)
	  	#@services = Service.where(:member4 => current_user.id)
	  	#@services = Service.where(:user_id => current_user.id)
	end

	def show	#show specific record in DB
		#will have a template
		@service = Service.find(params[:id])
	end

	def new
		@services = Service.new
	end

	def create
		@service = Service.new(service_params) 
		@service.group_id = Group.where(:user_id => current_user.id).pluck(:id).first
		@service.members = current_user.id if current_user
		@service.user_id = current_user.id if current_user
		#@service.group_id = Group.where(["user_id = ?", current_user.id]).first if current_user
		  	if @service.save 
		   		redirect_to '/services' 
		 	else 
		 		render 'new' 
			end 
	end
	

	def edit 
	  	@service = Service.find(params[:id]) 
	end

	def update 
	  	@user = User.all #dropdown
	  	@service = Service.find(params[:id]) 
	  	if @service.update_attributes(service_params) 
	    	redirect_to '/services'
	  	else 
	    	render 'edit' 
	  	end 
	end

	def destroy #delete a record
		#will destroy and redirect
		@service = Service.find(params[:id])
		@service.destroy
		redirect_to services_path
	end


	private 
  		def service_params 
    	params.require(:service).permit(:user_owner, :url, :login_name, :login_password, :member1,:member2,:member3,:member4) 
  	end

end
