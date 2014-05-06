class UsersController < ApplicationController
	protect_from_forgery

	def sign_in
		
	end

	def sign_up
		
	end

	def create
		@new = User.new

		@new.first_name = params[:firstname]
		@new.last_name = params[:lastname]
		@new.institution = params[:institution]
		@new.email = params[:email]
		@new.password = params[:password]
		@new.password = params[:role]
		
		if
			@new.save()
			redirect_to sign_in_users_path
			#flash[:notice] = "You are signed up successfully"
		end
	end

	def index
		@list = User.all
	end

	def validUser
		@r_email = params[:email]
		@r_password = params[:password]

		@c_email = User.find_by_email(@r_email)
		@c_password = User.find_by_password(@r_password)

		if @c_email.nil? or @c_password.nil?
			flash[:notice] = "Entered Email-Id/Password is Invalid"
			redirect_to sign_in_users_path
		else
			#redirect_to :action => 'loggedin'
			redirect_to users_admin_index_path
		end
	end

	def new
		
	end

	def update
		
	end
end
