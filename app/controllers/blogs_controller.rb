class BlogsController < ApplicationController
	before_action :require_signin, only: [:news]

	def news
		@blogs = Blog.all
	end

	def index #shows all blog posts of a user
		set_user
		@blogs = @user.blogs
	end

	def show #shows one blog post of a user
		set_user
		@blog = @user.blogs.find(params[:id])
	end

	def new
		set_user
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
		params.require(:blog).permit(:content)
	end

	def set_user
		@user = User.find(params[:user_id])
	end

end

# There is no difference between using params[:user_id] vs params[:id]
# But since I'm fetching a User instance in the Blog controller
# It is better to use :user_id