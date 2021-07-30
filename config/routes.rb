Rails.application.routes.draw do
  root "sessions#hello"
  get '/login' => "sessions#new"
  post '/login' => "sessions#create"
  post '/logout' => "sessions#destroy"

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
