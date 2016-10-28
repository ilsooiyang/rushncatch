class BlogsController < ApplicationController

	def news
		@blogs = Blog.all
	end

	def index #shows all blog posts of a player
		set_player
		@blogs = @player.blogs
	end

	def show #shows one blog post of a player
		set_player
		@blog = @player.blogs.find(params[:id])
	end

	def new
		set_player
		@blog = @player.blogs.new
	end

	def create
		set_player
		@blog = @player.blogs.new(blog_params)
		if @blog.save
			redirect_to news_path, notice: "Successfully Posted"
		else
			render :new
		end
	end

	def destroy
		@blog = Blog.find(params[:id])
		@player = Player.find(@blog.player_id)
		@blog.destroy
		redirect_to player_blogs_path(@player), notice: "Successfully Deleted"
	end

private

	def blog_params
		params.require(:blog).permit(:content)
	end

	def set_player
		@player = Player.find(params[:player_id])
	end

end

# There is no difference between using params[:player_id] vs params[:id]
# But since I'm fetching a Player instance in the Blog controller
# It is better to use :player_id