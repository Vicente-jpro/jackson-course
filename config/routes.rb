require 'sidekiq/web'



Rails.application.routes.draw do
  devise_for :users
  resources :coins
  resources :mining_types

  authenticate :user, ->(user) { user.admin? } do
    mount Sidekiq::Web => '/sidekiq'
  end
  

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "coins#index"
end
