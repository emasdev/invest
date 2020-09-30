Rails.application.routes.draw do
  get 'investments/index'
  get 'investments/new'
  resources :users, only: [:new, :create]
  resources :groups, only: [:index, :new, :create]
  resources :investments, only: [:index, :new, :create]
  root 'invest#index'
  get '/', to: 'sessions#home'
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  get 'logout', to: 'sessions#logout'
  get 'profile', to: 'invest#profile'

end
