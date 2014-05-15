class RolesController < ApplicationController
	protect_from_forgery
	
	def index
		@user_roles = Role.all
	end

	def create
		@new = Role.new
		@new.role_name = params[:role][:role_name]
		if
			@new.save
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
		@role.role_name = params[:role][:role_name]
		if
			@role.save
			redirect_to roles_path
		end
	end

	def destroy
			Role.find(params[:id]).destroy()
			redirect_to roles_path
	end
end
