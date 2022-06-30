Rails.application.routes.draw do
 # resources :orderitems
 # resources :cartitems
 # resources :itemvitamins
 # resources :usercreditcards
 # resources :useraddrs
 # resources :addresses
 # resources :creditcards
 # resources :carts
  resources :vitamins, only: [:index, :show]
  resources :items, only: [:index, :show]
 # resources :reviews
 # resources :orders
 # resources :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
