Rails.application.routes.draw do
  get 'posts/new'
  get 'posts/create'
  get 'mmd/index'
  post 'mmd/index'
  root 'mmd#index'
  post 'groups/show'
  get 'auth/:provider/callback', to: 'sessions#create'
  get 'auth/failure', to: redirect('/')
  get 'signout', to: 'sessions#destroy', as: 'signout'

  resources :sessions, only: [:create, :destroy]
  resources :groups do
    resources :posts, only: [:create, :destroy]
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
