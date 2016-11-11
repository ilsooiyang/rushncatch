class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def require_signin
  	unless current_user
  		session[:intended_url] = request.url
      flash[:error] = "This page requires signin"
  		redirect_to signin_path
  	end
  	#unless there is somebody signed in redirect them to the signin page
  end

  def require_admin
  	unless current_user_admin?
      flash[:error] = "Unauthorized Access"
  		redirect_to root_path
  	end
  end

  helper_method :require_admin

  def current_user_admin?
  	current_user && current_user.admin?
  end

  helper_method :current_user_admin?

	def current_user?(user)
		user == current_user
		#is this user the current user?
	end

	helper_method :current_user?

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  helper_method :current_user

  def any_user?
    User.any?
  end

  helper_method :any_user?
end
