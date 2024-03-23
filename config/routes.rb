Rails.application.routes.draw do
  get 'search', to: 'menu#search'
  resources :categories
  get 'menu', to: 'menu#index'
  devise_for :users
  resources :products
  root 'pages#home'
  get 'catering', to: 'pages#catering'
  get 'info', to: 'pages#info'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
end
