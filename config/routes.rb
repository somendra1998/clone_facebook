Rails.application.routes.draw do

  # Custom routes for devise
  devise_for :users, controllers: {
    :sessions => "users/sessions",
    :registrations => "users/registrations" }
      # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  devise_scope :user do
    # authenticated :user do
    # end
    
    unauthenticated do
      root 'devise/sessions#new', as: :unauthenticated_root
    end
  end
  # resources :users, only: [] do 
  #   get "get_user"
  # end
  resources :posts do
    resources :comments, only: [:create]  
  end
  resources :likes, only: [:create]
  delete 'like/:id', to: 'likes#destroy', as: 'unlike'
  
  resources :home, only: :index

  # User feed
  get 'user_feed/:user_id', to: 'user_feeds#user_feed', as: 'user_feed'
  get 'view_profile', to: 'user_feeds#view_profile', as: 'view_profile'
end
