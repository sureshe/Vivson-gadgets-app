class UsersAdminController < ApplicationController
	protect_from_forgery

	def index
		@user = User.all
	end


	def create
		@new = User.new

		@new.first_name = params[:firstname]
		@new.last_name = params[:lastname]
		@new.institution = params[:institution]
		@new.email = params[:email]
		@new.password = params[:password]
		@new.role = params[:role]
		
		if
			@new.save()
			redirect_to users_admin_index_path
			#flash[:notice] = "You are signed up successfully"
		end
		
	end


	def new
		
	end


	def show
		@user = User.find(params[:id])
		
	end


	def destroy
			User.find(params[:id]).destroy()
			redirect_to users_admin_index_path
	end


	def signin
		
	end


	def contact
		
	end
	

	def edit
		@user = User.find(params[:id])
	end

	def sign_out
		
	end

	def update

		@user = User.find(params[:id])

		@new.first_name = params[:firstname]
		@new.last_name = params[:lastname]
		@new.institution = params[:institution]
		@new.email = params[:email]
		@new.password = params[:password]
		@new.role = params[:role]
		
		if
			@new.save()
			redirect_to users_admin_path
			#flash[:notice] = "You are signed up successfully"
		end
	end

end
