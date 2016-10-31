class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def require_signin
  	unless current_user
  		session[:intended_url] = request.url
  		redirect_to signin_path, notice: "This page requires signin"
  	end
  end

	def current_user
		User.find(session[:user_id]) if session[:user_id]
	end

	helper_method :current_user

	def current_user?(user)
		user == current_user
	end

	helper_method :current_user?
end
