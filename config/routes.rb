Rails.application.routes.draw do
  root "sessions#hello"
  get '/login' => "sessions#new"
  post '/login' => "sessions#create"
  delete '/logout' => "sessions#destroy"

  resources :reviews
  resources :users
  resources :authors
  resources :categories
  resources :books


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
