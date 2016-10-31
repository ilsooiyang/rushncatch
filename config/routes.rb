Rails.application.routes.draw do

	root "users#home"
	get "signin" => "sessions#new"
	get "signup" => "users#new"

	resource :session

	get "home" => "users#home"
  resources :users do
  	resources :blogs, :only => [:index, :show, :new]
  end

  post "users/:user_id/blogs" => "blogs#create"
  get "news" => "blogs#news"
  resources :blogs, :except => [:index, :show, :new]

end
