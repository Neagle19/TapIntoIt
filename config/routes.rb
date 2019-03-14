Rails.application.routes.draw do

  devise_for :users, controllers: { registrations: "registrations" }

  resources :posts, only: [:index, :show]
  get 'friend_connections/:id', to: 'friend_connections#create', as: 'add_friend'

  root to: 'pages#landing'
  get '/like/new/:id', to: 'like_beers#new', as: 'like'
  resources :beers, only: [:index, :show] do
    resources :review_beers, only: [:new, :create]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :breweries, only: [:index, :show, :new, :create]
  resources :qr_codes, only: [:new, :create]
  resources :comment_beers, only: [:create]
  #   get 'new', to: 'qr_codes#new'
  #   post 'create', to: 'qr_codes#create'
  # end
   # resources :qr_codes, only:[:new, :create]
   post '/profiles', to: 'profiles#show_with_username', as: 'show_with_username'
   resources :profiles, only: [:show, :edit]
end
