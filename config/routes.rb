Rails.application.routes.draw do

	root "players#home"
	get "home" => "players#home"
  resources :players do
  	resources :blogs, :only => [:index, :show, :new]
  end

  post "players/:player_id/blogs" => "blogs#create"
  get "news" => "blogs#news"
  resources :blogs, :except => [:index, :show, :new]

end
