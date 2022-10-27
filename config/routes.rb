Rails.application.routes.draw do

  # Custom routes for devise
  devise_for :users, controllers: {
    :sessions => "users/sessions",
    :registrations => "users/registrations" }
      # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  devise_scope :user do
    authenticated :user do
      root 'posts#index', as: :authenticated_root
      resources :posts
    end
  
    unauthenticated do
      root 'devise/sessions#new', as: :unauthenticated_root
    end
  end
end
