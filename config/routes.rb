Rails.application.routes.draw do
  root "welcome#home"
  get "/about" => "welcome#about"
  get "/contact" => "welcome#contact"
  #users controller is responsible for login since we will be creating new user and that is interacting directly with User model
  get '/signup' => "users#new"
  post '/signup' => "users#create"
  # sessions controller is responsible to sign in a user
  get '/login' => "sessions#new"
  post '/login' => "sessions#create"

  post '/logout' => "sessions#destroy"
  #logging you in with google
  get '/auth/google_oauth2/callback', to: 'sessions#omniauth'
  #our post (response) will be handled by middleware
  #middleware is expectiong this route

  # resources :reviews
  resources :users

  resources :authors
  resources :categories
  resources :books

  resources :books, only: :show do 
    resources :reviews, only: [:index, :show, :new, :edit, :create, :update, :destroy]
  end



  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
