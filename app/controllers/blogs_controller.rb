class BlogsController < ApplicationController
	before_action :require_signin, only: [:news]

	def news
		@user = current_user
		@blog = @user.blogs.new
		@blogs= Blog.order(created_at: :desc).paginate(:page => params[:page], :per_page => 5)
	end

	def index
		set_user
		@blogs = @user.blogs
	end

	def show
	end

	def new
		@user = current_user
		@blog = @user.blogs.new
	end

	def create
		set_user
		@blog = @user.blogs.new(blog_params)
		if @blog.save
			redirect_to news_path, notice: "Successfully Posted"
		else
			render :new
		end
	end

	def destroy
		@blog = Blog.find(params[:id])
		@user = User.find(@blog.user_id)
		@blog.destroy
		redirect_to user_blogs_path(@user), notice: "Successfully Deleted"
	end

private

	def blog_params
		params.require(:blog).permit(:content, :title)
	end

	def set_user
		@user = User.find(params[:user_id])
	end

end

# There is no difference between using params[:user_id] vs params[:id]
# But since I'm fetching a User instance in the Blog controller
# It is better to use :user_id