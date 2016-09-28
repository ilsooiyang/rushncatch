class PlayersController < ApplicationController
	def index
	end

	def roster
		@players = Player.all
		# @koreans, @foreigners = @players.partition {|p| p.korean?}
	end

	def show
		@player = Player.find(params[:id]) #figure out params[:number]
	end

	def new
		@player = Player.new
	end

	def edit
		@player = Player.find(params[:id])
	end

	def update
		@player = Player.find(params[:id]).update(player_params)
		redirect_to players_path(@player)
	end

	def create
		@player = Player.create(player_params)
		redirect_to @player
	end

	def destroy
		Player.find(player_params).destroy
		redirect_to players_path
	end

end

private
	
	def player_params
		params.require(:player).permit(:name, :age, :number, :nationality, :profile_pic)
	end