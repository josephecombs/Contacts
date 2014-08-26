SHARES = [:index, :create, :show, :update, :destroy]

Rails.application.routes.draw do
  resources :users, only: SHARES do
    resources :contacts, only: :index
  end
  resources :contacts, only: SHARES, except: :index
  resources :contact_shares, only: SHARES
  
  #resources :users
  
#    Prefix Verb   URI Pattern               Controller#Action
#     users GET    /users          users#index
#           POST   /users          users#create
#  new_user GET    /users/new      users#new
# edit_user GET    /users/:id/edit users#edit
#      user GET    /users/:id      users#show
#           PATCH  /users/:id      users#update
#           PUT    /users/:id      users#update
#           DELETE /users/:id      users#destroy

  # get 'users/:id' => 'users#show'
  # get 'users' => 'users#index'
  # get 'users/new' => 'users#new'

  # get    '/users'          => 'users#index'
  # post   '/users'          => 'users#create', as: :users
  # # get    '/users/new'      => 'users#new', as: :new_user
  # # get    '/users/:id/edit' => 'users#edit', as: :edit_user
  # get    '/users/:id'      => 'users#show', as: :user
  # patch  '/users/:id'      => 'users#update'
  # # put    '/users/:id'      => 'users#update'
  # delete '/users/:id'      => 'users#destroy'
  #
  # get    '/users/:user_id/contacts'          => 'contacts#index'
  # post   '/contacts'          => 'contacts#create', as: :contact_create
  # get    '/contacts/:id'      => 'contacts#show', as: :contact
  # patch  '/contacts/:id'      => 'contacts#update'
  # delete '/contacts/:id'      => 'contacts#destroy'
  #
  # get    '/contact_shares'          => 'contact_shares#index'
  # post   '/contact_shares'          => 'contact_shares#create', as: :contact_share_create
  # get    '/contact_shares/:id'      => 'contact_shares#show', as: :contact_share
  # patch  '/contact_shares/:id'      => 'contact_shares#update'
  # delete '/contact_shares/:id'      => 'contact_shares#destroy'
  
  
end
