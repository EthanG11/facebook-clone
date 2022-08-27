Rails.application.routes.draw do
  devise_for :users
  resources :invitations
  resources :posts
  resources :comments
  resources :likes
  resources :friend_lists
  resources :searches
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
   root "home#index"

   get 'users/show/:id', to: 'home#show_user', as: 'user/show'
end
