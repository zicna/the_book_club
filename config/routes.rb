Rails.application.routes.draw do
  
  resources :reviews
  resources :users
  resources :authors
  resources :categories
  resources :books
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
