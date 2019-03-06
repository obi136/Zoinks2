Rails.application.routes.draw do
  resources :users
  resources :rentals
  resources :cars
  resources :sales
  resources :sales_agents
  # get '/users/sales', to "sales#new"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
