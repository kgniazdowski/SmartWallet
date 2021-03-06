Rails.application.routes.draw do

  resources :sessions, only: [:new, :create, :destroy]

  get 'signup', to: 'user#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'

  resources :users
  resources :loans

  root 'credits#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
