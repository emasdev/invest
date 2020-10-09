Rails.application.routes.draw do 
  resources :users, only: [:new, :create]
  resources :groups, only: [:index, :new, :create, :show]
  resources :investments, only: [:index, :new, :create]
  root 'invest#index'
  get '/', to: 'sessions#home'
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  get 'logout', to: 'sessions#logout'
  get 'profile', to: 'invest#profile'
  get 'profile', to: 'invest#profile'
  get 'investments/external', to: 'investments#external'
  
end
