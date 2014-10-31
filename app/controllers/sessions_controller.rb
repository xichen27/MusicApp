class SessionsController < ApplicationController

	def new
	end

	def create
		@user = User.find_by_credentials(user_params[:email], user_params[:password])
		return nil if @user.nil?

		login! @user
		redirect_to user_url(@user)
	end

	def destroy
		logout!
		redirect_to new_session_url
	end

	private
	def user_params
		params[:user].permit(:email, :password)
	end
end
