Rails.application.routes.draw do
  root "sessions#hello"
  #users controller is responsible for login since we will be creating new user and that is interacting directly with User model
  get '/login' => "users#new"
  post '/login' => "users#create"
  # sessions controller is responsible to sign in a user
  get '/signin' => "sessions#new"
  post '/signin' => "sessions#create"

  post '/logout' => "sessions#destroy"
  #logging you in with google
  get '/auth/google_oauth2/callback', to: 'sessions#omniauth'
  #our post (response) will be handled by middleware
  #middleware is expectiong this route

  resources :reviews
  resources :users
  resources :authors
  resources :categories
  resources :books


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
