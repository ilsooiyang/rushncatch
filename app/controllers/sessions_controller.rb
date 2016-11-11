class SessionsController < ApplicationController

	def new
		if current_user
			redirect_to current_user
		end
	end

	def create
		if @user = User.authenticate(params[:email_or_username], params[:password])
			session[:user_id] = @user.id
			redirect_to(session[:intended_url] || @user)
			flash[:success] = "Signed in as #{@user.name}"
			session[:intended_url] = nil
		else
			render :new
		end
	end

	def destroy
		session[:user_id] = nil
		redirect_to root_url, alert: "Signed out"
	end

end
