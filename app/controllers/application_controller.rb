class ApplicationController < ActionController::Base
	protect_from_forgery

	def filter_logged_in
		if !session[:user]
			bounce_back('helpers.filter.logged_in.failure')
		end
	end

	def filter_admin
		if session[:user] && !session[:user].admin?
			bounce_back('helpers.filter.admin.failure')
		end
	end

	def filter_red_hat_leader
		if session[:user] && (!session[:user].red_hat_leader? && !session[:user].admin?)
			bounce_back('helpers.filter.red_hat_leader.failure')
		end
	end

	def filter_university_leader
		if session[:user] && (!session[:user].university_leader? && !session[:user].admin?)
			bounce_back('helpers.filter.university_leader.failure')
		end
	end

private

	def bounce_back(message)
		flash[:error] = [t(message)]
		redirect_to :root
	end
end
