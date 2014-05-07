class RolesController < ApplicationController
	protect_from_forgery
	
	def index
		@user_roles = Role.all
	end

	def create
		@new = Role.new

		@new.role_name = params[:role][:name]
		if
			@new.save()
			redirect_to roles_path
			#flash[:notice] = "role is added"
		end
	end

	def new
		
	end

	def show
		
	end

	def edit
		@role = Role.find(params[:id])
	end

	def update
		@role = Role.find(params[:id])

		@role.first_name = params[:user][:first_name]
		
		
		if
			@new.save()
			redirect_to users_admin_path
			#flash[:notice] = "You are signed up successfully"
		end
	end

	def destroy
			Role.find(params[:id]).destroy()
			redirect_to roles_path
	end
	
end
