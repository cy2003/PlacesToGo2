Rails.application.routes.draw do

  get '/', to: 'users#welcome', as: 'root'
  get '/signin', to: 'sessions#new'
  post '/signin', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy', as: "logout"
  post '/users/:id', to: 'users#show'

  resources :users do
    member do
      get :following, :followers
    end
  end

  # resources :users 
  resources :user_countries
  resources :hotels
  resources :restaurants
  resources :sites
  resources :locations
  resources :countries
  resources :sessions
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
