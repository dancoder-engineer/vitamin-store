Rails.application.routes.draw do
 # resources :orderitems
 # resources :cartitems
 # resources :itemvitamins
 # resources :usercreditcards
 # resources :useraddrs
  resources :creditcards
 # resources :carts
  resources :addresses, only: [:index]
  resources :vitamins
  resources :items
  resources :reviews
 # resources :orders
  resources :users, except: [:destroy]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  get '/reviewsbyuser/:id', to: 'reviews#byuser'

  # Defines the root path route ("/")
  # root "articles#index"
end
