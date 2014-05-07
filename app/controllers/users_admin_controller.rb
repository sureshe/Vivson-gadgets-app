class UsersAdminController < ApplicationController
	protect_from_forgery

	def index
		@users = User.all
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

		@new = User.find(params[:id])

		@new.first_name = params[:user][:first_name]
		@new.last_name = params[:user][:last_name]
		@new.institution = params[:user][:institution]
		@new.email = params[:user][:email]
		@new.password = params[:user][:password]
		@new.role = params[:role]
		
		if
			@new.save()
			redirect_to users_admin_path
			#flash[:notice] = "You are signed up successfully"
		end


		# respond_to do |format|
		# 	if @user.save
		#     @user.add_role params[:user][:role]
		#     format.html { redirect_to users_admin_index_path }
		#     flash[:notice] =  'User successfully created.' 
		# 	else
	 #    	format.html {render action: 'new'}
		# 	end
		# end
	end

end
