class ApplicationController < ActionController::Base
	protect_from_forgery with: :exception
	before_filter :require_login

	private

	def require_login
		unless current_user
			redirect_to login_url
		end
	end
	
	def current_user
		User.where(id: session[:user_id]).first
	end
	helper_method :current_user
end
