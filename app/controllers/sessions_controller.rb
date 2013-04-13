class SessionsController < ApplicationController
	def new
	end

	def create
		@user = User.find_by_email(params[:session][:email])

		if @user && @user.check_password(params[:session][:password])
			session[:user] = @user
			flash[:success] = [t('sessions.create.success')]
		else
			flash[:error] = [t('sessions.create.failure')]
		end

		redirect_to :back
	end

	def destroy
		if session[:user]
			session.delete(:user)
			flash[:success] = [t('sessions.destroy.success')]
		else
			flash[:error] = [t('sessions.destroy.failure')]
		end

		redirect_to :root
	end
end
