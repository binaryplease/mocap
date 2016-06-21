class UsersController < ApplicationController
	def new
		@user = User.new
	end

	def create
		@user = User.new(user_params)
		@user.valid?
		if @user.save
			session[:user_id] = @user.id
			redirect_to '/'
		else
			render '/users/new' 
		end		
	end

	private

	def user_params
		params.require(:user).permit(:username, :password, :password_confirmation)
	end

end
