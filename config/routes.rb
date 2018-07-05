Rails.application.routes.draw do
  get 'errors/not_found'
  get 'errors/internal_server_error'
  get 'posts/new'
  get 'posts/create'
  get 'mmd/index'
  post 'mmd/index'
  root 'mmd#index'
  get  'groups/new'
  post '/groups/:id', to: 'groups#show', as: 'group'
  get 'auth/:provider/callback', to: 'sessions#create'
  get 'auth/failure', to: redirect('/')
  get 'signout', to: 'sessions#destroy', as: 'signout'
  match '/404', to: 'errors#not_found', via: :all
  match '/500', to: 'errors#internal_server_error', via: :all
 
  resources :sessions, only: [:create, :destroy]
  resources :groups do
    resources :posts, only: [:create, :destroy]
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
