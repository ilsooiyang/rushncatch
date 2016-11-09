class SessionsController < ApplicationController

	def new
		if current_user
			redirect_to current_user
		end
	end

	def create
		if @user = User.authenticate(params[:email_or_username], params[:password])
			session[:user_id] = @user.id
			flash[:notice] = "Successfully signed in as #{@user.name}"
			redirect_to(session[:intended_url] || @user)
			session[:intended_url] = nil
		else
			render :new
		end
	end

	def destroy
		session[:user_id] = nil
		redirect_to root_url, notice: "Successfully signed out"
	end

end
