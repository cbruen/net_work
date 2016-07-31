Rails.application.routes.draw do

	resources :users, only: [:new]
	resources :degrees, only: [:index, :new, :create]

end
