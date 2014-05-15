class AdminsController < ApplicationController
	protect_from_forgery

	def index
		@list = User.all
	end


	def create

		@new = User.new

		@new.first_name = params[:firstname]
		@new.last_name = params[:lastname]
		@new.institution = params[:institution]
		@new.email = params[:email]
		@new.password = params[:password]
		
		if
			@new.save()
			redirect_to :action => 'signin' 
			#flash[:notice] = "You are signed up successfully"
		end
	end


	def new
		
	end


	def show
		@r_email = params[:email]
		@r_password = params[:password]

		@c_email = User.find_by_email(@r_email)
		@c_password = User.find_by_password(@r_password)

		if @c_email.nil? or @c_password.nil?
			flash[:notice] = "Entered Email-Id/Password is Invalid"
			redirect_to :action => 'signin'
		else
			#redirect_to :action => 'loggedin'
			render :action => 'index'
		end
	end


	def destroy
		if User.find(params[:id]).destroy()
			render :action => 'index'
		end
	end


	def signin
		
	end


	def contact
		
	end

end
