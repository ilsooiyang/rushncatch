class UsersController < ApplicationController
	before_action :require_signin, only: [:show]
	before_action :require_correct_user, only: [:edit, :update, :destroy]

	def home
	end

	def index
		@users = User.order(number: :asc)
	end

	def show
		set_user
	end

	def new
		@user = User.new
	end

	def create
		@user = User.new(user_params)
		if @user.save
			session[:user_id] = @user.id
			redirect_to @user
			flash[:success] = "Welcome '#{@user.name}'!"
		else
			render :new
		end
	end

	def edit
	end

	def update
		if @user.update(user_params)
			redirect_to @user
			flash[:success] = "'#{@user.name}' was updated"
		else
			render :edit
		end
	end

	def destroy
		@user.destroy
		session[:user_id] = nil if current_user?(@user)
		redirect_to players_path, alert: "'#{@user.name}' was deleted"
	end

end

private
	
	def user_params
		params.require(:user).permit(:name, :email, :username, :number, :password, :password_confirmation, :intro)
	end

	def set_user
		@user = User.find(params[:id])
	end

	def require_correct_user
		set_user
		unless current_user?(@user) || current_user_admin?
			#unless the dude that's signed in is the dude that's being deleted
			#or the dude that's signed in is an admin
			redirect_to root_path, alert: "Unauthorized Access"
		end
	end












