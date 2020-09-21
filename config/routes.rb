Rails.application.routes.draw do
  resources :users, only: [:new, :create]
  get 'welcome', to: 'sessions#welcome'
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  get 'authorized', to: 'sessions#page_requires_login'
  
end
