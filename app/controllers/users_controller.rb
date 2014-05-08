class UsersController < ApplicationController
	protect_from_forgery

	def index
		@list = User.all
	end

	def create
		@new = User.new

		@new.first_name = params[:user][:first_name]
		@new.last_name = params[:user][:last_name]
		@new.institution = params[:user][:institution]
		@new.email = params[:user][:email]
		@new.password = params[:user][:password]
		#@new.role = params[:role]
		
		if
			@new.save
			redirect_to users_admin_index_path
			#flash[:notice] = "You are signed up successfully"
		end
	end

	def new
		
	end

	def update
		
	end

	def validUser
		@r_email = params[:user][:email]
		@r_password = params[:user][:password]

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

	def sign_in
		
	end

	def sign_up
		
	end

end
