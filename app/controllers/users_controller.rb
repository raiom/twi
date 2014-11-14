class UsersController < ApplicationController
 
	def new
		@user = User.new
	end 
	def create
		user = User.new(user_params)
		if user.save
			redirect_to root_path, notice: 'success'
		else
			render new_user_path, alert: 'try again'
		end
	end
 
	def signin
		# TODO
	end
	def signout
		# TODO
	end
 
	private 
	def user_params
		params.require(:user).permit(:name, :email, :password, :icon)
	end
end