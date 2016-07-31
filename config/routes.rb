Rails.application.routes.draw do

  get '/auth/:provider/callback', to: 'sessions#create'

	resources :users, only: [:new]
	resources :degrees, only: [:index, :new, :create]

end
