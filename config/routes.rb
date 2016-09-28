Rails.application.routes.draw do
	root "players#index"
	get "home" => "players#index"
	get "players" => "players#roster"
	get "players/new" => "players#new", as: "new_player"
	get "players/:id" => "players#show", as: "player"
	post "players" => "players#create"
	delete "players/:id" => "players#delete"
	get "players/:id/edit/" => "players#edit", as: "edit_player"
	patch "players/:id" => "players#update"
	# resources :players
end
