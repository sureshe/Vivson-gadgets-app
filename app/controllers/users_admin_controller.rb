class UsersAdminController < ApplicationController
	protect_from_forgery

	def index
		@users = User.all
	end

	def show
		@user = User.find(params[:id])
		
	end

	def create
		#render :text => params.inspect and return
		@new = User.new

		@new.first_name = params[:user][:first_name]
		@new.last_name = params[:user][:last_name]
		@new.institution = params[:user][:institution]
		@new.email = params[:user][:email]
		@new.password = params[:user][:password]
		#@new.role = params[:role]
		
		if
			@new.save()
			redirect_to users_admin_index_path
			#flash[:notice] = "You are signed up successfully"
		end
	end

	def new
		
	end

	def edit
		@user = User.find(params[:id])
	end

	def update

		@user = User.find(params[:id])

		@user.first_name = params[:user][:first_name]
		@user.last_name = params[:user][:last_name]
		@user.institution = params[:user][:institution]
		@user.email = params[:user][:email]
		@user.password = params[:user][:password]
		@user.role = params[:user][:role]
		
		if @user.save
			redirect_to users_admin_index_path
			#flash[:notice] = "You are signed up successfully"
		end
	end

	def signin
		
	end

	def contact
		
	end
	
	def sign_out
		
	end

	def destroy
			User.find(params[:id]).destroy
    	redirect_to users_admin_index_path
	end

end
