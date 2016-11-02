Rails.application.routes.draw do

	root "users#home"

	get "signin" => "sessions#new"
	resource :session, :except => [:new]

	get "home" => "users#home"
  get "players" => "users#index"
  get "signup" => "users#new"
  get "news" => "blogs#news"
  resources :users, :except => [:home, :index, :new] do
  	resources :blogs, :except => [:news, :show]
  end

end
