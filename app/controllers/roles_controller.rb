class RolesController < ApplicationController
	protect_from_forgery
	
	def new
		@new = Role.new

		@new.role_name = params[:name]
		if
			@new.save()
			redirect_to :action => '#' 
			#flash[:notice] = "You are signed up successfully"
		end
	end

	def index
		@list = Role.all
	end

	def create
		
	end

	def show
		
	end

	def edit
		
	end

	def delete
		
	end
end
