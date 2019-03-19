Rails.application.routes.draw do

  devise_for :users, controllers: { registrations: "registrations" }

  resources :posts, only: [:index, :show]
  get 'friend_connections/:id', to: 'friend_connections#create', as: 'add_friend'
  get 'accept_friend/:id', to: 'friend_connections#accept_friend', as: 'accept_friend'

  root to: 'pages#landing'
  get '/like/new/:id', to: 'like_batches#new', as: 'like'
  resources :beers, only: [:index, :show, :new, :create, :update, :edit] do
    resources :review_beers, only: [:new, :create]
    resources :batches, only: [:index, :show, :new, :create] do
      resources :review_batches, only: [:new, :create]
    end

  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :breweries, only: [:index, :show, :new, :create, :edit, :update]
  resources :qr_codes, only: [:new, :create, :show]
  get '/checkin/:id', to: 'checkins#create', as: 'checkin'
  resources :comment_batches, only: [:create]
  #   get 'new', to: 'qr_codes#new'
  #   post 'create', to: 'qr_codes#create'
  # end
   # resources :qr_codes, only:[:new, :create]
   post '/profiles', to: 'profiles#show_with_username', as: 'show_with_username'
   post '/profile_geoloc', to: 'profiles#profile_geoloc', as: 'profile_geoloc'
   resources :profiles, only: [:show, :edit]
   resources :notifs, only: [:index]
   get 'follow/:id', to: 'follows#create', as: 'follow'
end
