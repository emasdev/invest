Rails.application.routes.draw do
  resources :users, only: [:new, :create]
  resources :groups, only: [:index, :new, :create]
  resources :transactions, only: [:index, :new, :create]
  root 'invest#index'
  get '/', to: 'sessions#home'
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  get 'logout', to: 'sessions#logout'
  
  
end
