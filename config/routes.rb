Rails.application.routes.draw do

  # Custom routes for devise
  devise_for :users, controllers: {
    :sessions => "users/sessions",
    :registrations => "users/registrations" }
      # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  devise_scope :user do
    authenticated :user do
      root 'home#index', as: :authenticated_root
      resources :posts do
        resources :comments, only: [:create]  
      end
      resources :likes, only: [:create]
      delete 'like/:id', to: 'likes#destroy', as: 'unlike'
    end
  
    unauthenticated do
      root 'devise/sessions#new', as: :unauthenticated_root
    end
  end
end
