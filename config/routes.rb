Rails.application.routes.draw do
  use_doorkeeper
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "pages#index"

  resources :users, only: [:new, :create]
  
  resources :sessions, only: [:new, :create]
  delete '/logout', to: 'sessions#destroy', as: :logout
end
