Rails.application.routes.draw do
  resources :coins
  resources :mining_types
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "coins#index"
end
