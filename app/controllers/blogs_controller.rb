class BlogsController < ApplicationController

	def news
		@player = Player.new
		@blogs = Blog.all
	end

	def index #shows all blogs of a player
		@player = Player.find(params[:player_id])
		@blogs = @player.blogs
	end

	def show #shows all blogs of a player
		@player = Player.find(params[:player_id])
		@blogs = @player.blogs
	end

	def new
		@player = Player.find(params[:player_id])
		@blog = @player.blogs.new
	end

	def create
		@player = Player.find(params[:player_id])
		@blog = @player.blogs.new(blog_params)
		if @blog.save
			redirect_to news_path, notice: "Successfully Posted"
		else
			render :new
		end
	end

private

	def blog_params
		params.require(:blog).permit(:content)
	end

end

# There is no difference between using params[:player_id] vs params[:id]
# But since I'm fetching a Player instance in the Blog controller
# It is better to use :player_id