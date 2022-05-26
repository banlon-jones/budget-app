Rails.application.routes.draw do
  devise_for :users
  resources :entities, only: %i[create new]
  resources :categories, only: %i[create new show index]
  resources :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root to: 'users#home'
end
