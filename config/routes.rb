Rails.application.routes.draw do

  devise_for :users, controllers: { registrations: "registrations" }

  resources :posts, only: [:index, :show]


  root to: 'pages#landing'
  get '/like/new/:id', to: 'like_beers#new', as: 'like'
  resources :beers, only: [:index, :show] do
    resources :review_beers, only: [:new, :create]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :breweries, only: [:index, :show, :new]
  resources :qr_codes, only: [:new, :create]
  resources :admin, only: [:index,]
  resources :profile, only: [:show]
  #   get 'new', to: 'qr_codes#new'
  #   post 'create', to: 'qr_codes#create'
  # end
   # resources :qr_codes, only:[:new, :create]
end
