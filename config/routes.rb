Rails.application.routes.draw do
  get 'mmd/index'
  post 'mmd/index'
  root 'mmd#index'
  get 'auth/:provider/callback', to: 'sessions#create'
  get 'auth/failure', to: redirect('/')
  get 'signout', to: 'sessions#destroy', as: 'signout'

  resources :sessions, only: [:create, :destroy]
  resource :home, only: [:show]
  resources :groups

  root to: 'home#show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
