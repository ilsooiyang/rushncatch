Rails.application.routes.draw do

<<<<<<< HEAD
	root "players#home"
=======
>>>>>>> 5a6013f10886859aebdb0f5bdc0f162d530e9742
	get "home" => "players#home"
  resources :players do
  	resources :blogs, :only => [:index, :show, :new]
  end

  post "players/:player_id/blogs" => "blogs#create"
  get "news" => "blogs#news"
  resources :blogs, :except => [:index, :show, :new]

end
