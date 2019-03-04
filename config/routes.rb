Rails.application.routes.draw do
  resources :renters
  resources :rentals
  resources :cars
  resources :commissions
  resources :sales_agents
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
