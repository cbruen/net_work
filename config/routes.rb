Rails.application.routes.draw do

  root 'welcome#home'
  get '/auth/:provider/callback', to: 'sessions#create'

  resources :sessions, only: [:new, :destroy, :create]
	resources :users do
	   resources :degrees, only: [:index, :new, :create]
  end

end
