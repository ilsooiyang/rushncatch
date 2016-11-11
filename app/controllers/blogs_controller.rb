class BlogsController < ApplicationController
	before_action :require_signin, only: [:news]

	def news
		set_current_user
		@blog = @user.blogs.new
		@blogs= Blog.order(created_at: :desc).paginate(:page => params[:page], :per_page => 5)
	end

	def index
		@user = User.find(params[:user_id])
		@blogs = @user.blogs
	end

	def show
	end

	def new
		set_current_user
		@blog = @user.blogs.new
	end

	def create
		set_current_user
		@blog = @user.blogs.new(blog_params)
		if @blog.save
			redirect_to news_path
			flash[:success] = "Posted"
		else
			render :new
		end
	end

	def edit
	end

	def destroy
		@blog = Blog.find(params[:id])
		@user = User.find(@blog.user_id)
		@blog.destroy
		redirect_to user_blogs_path(@user), alert: "Deleted"
	end

private

	def blog_params
		params.require(:blog).permit(:content, :title)
	end

	def set_current_user
		@user = current_user
	end

end

# There is no difference between using params[:user_id] vs params[:id]
# But since I'm fetching a User instance in the Blog controller
# It is better to use :user_id