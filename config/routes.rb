Rails.application.routes.draw do
 # resources :orderitems
 # resources :cartitems
 # resources :itemvitamins
 # resources :usercreditcards
 # resources :useraddrs
 # resources :creditcards
 # resources :carts
 # resources :addresses, only: [:index]
  resources :vitamins
  resources :items
  resources :reviews
  resources :orders, only: [:index, :create]
  resources :orderitems, only: [:index, :create]
  resources :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  get '/byletter/', to: 'items#byLetter'
  get '/reviewsbyuser/:id', to: 'reviews#byuser'
  get '/reviewsbyuseritem/:user/:item', to: 'reviews#byuseritem'
  get '/featureditems', to: 'items#featured'
  get '/searchitems/:term', to: 'items#searchitems'
  post '/loginback/', to: 'sessions#login'
  post '/newuserback/', to: 'sessions#newUser'
  get '/getme', to: 'sessions#getme'
  get '/extra', to: 'sessions#extra'
  get '/logoutback/', to: 'sessions#logout'
  get '/reviewsbyitem/:id', to: 'reviews#byitem'
  get '/createcart/', to: 'sessions#createCart'
  post '/updatecart/', to: 'sessions#updateCart'
  get '/getcart/', to: 'sessions#getCart'
  get '/emptycart/', to: 'sessions#emptyCart'
  # Defines the root path route ("/")
  # root "articles#index"

  get "*path", to: "fallback#index", constraints: ->(req) { !req.xhr? && req.format.html? }
end