Rails.application.routes.draw do
  resources :users
  resources :rentals
  resources :cars
  resources :sales
  resources :sales_agents

  get "/login", to: "sessions#new", as: "login"
  post "/login", to: "sessions#create"
  delete "login", to: "sessions#destroy", as: "logout"

  get '/auth/facebook/callback' => 'sessions#create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
