Rails.application.routes.draw do
  resources :teams
  resources :palyers
  resources :games
  devise_for :users
  root 'home#show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
