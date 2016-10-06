class PlayersController < ApplicationController
	def home
	end

	def index
		@players = Player.all
	end

	def show
		@player = Player.find(params[:id]) #figure out params[:number]
	end

	def new
		@player = Player.new
	end

	def create
		@player = Player.new(player_params)
		if @player.save
			redirect_to @player, notice: "'#{@player.name}' was created"
		else
			render :new
		end
	end

	def edit
		@player = Player.find(params[:id])
	end

	def update
		@player = Player.find(params[:id])
		if @player.update(player_params)
			redirect_to @player, notice: "'#{@player.name}' was updated"
		else
			render :edit
		end
	end

	def delete
		@player = Player.find(params[:id])
		@player.destroy
		redirect_to players_path, alert: "'#{@player.name}' was deleted"
	end

end

private
	
	def player_params
		params.require(:player).permit(:name, :age, :number, :nationality, :profile_pic)
	end