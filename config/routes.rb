Rails.application.routes.draw do
  namespace :api do
    resources :tasks do
      member do
        post 'assign'
        put 'progress'
      end
    end
    get '/tasks/overdue', to: 'tasks#overdue'
    get '/tasks/status/:status', to: 'tasks#by_status'
    get '/tasks/completed', to: 'tasks#completed_tasks'
    get '/tasks/statistics', to: 'tasks#statistics'
    resources :users, only: [] do
      get 'tasks', to: 'tasks#user_tasks'
    end
  end
  devise_for :users
  resources :players, only: [:new, :edit, :update, :show, :create, :destroy] 
  resources :games, only: [:index, :new, :create] do
    member do
      post 'join'
    end
  end
  root to: 'games#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
end
