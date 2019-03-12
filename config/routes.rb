Rails.application.routes.draw do
  resources :posts, only: [:index, :show]
  devise_for :users
  root to: 'pages#landing'
  resources :beers, only: [:index, :show]
  get '/like/new/:id', to: 'like_beers#new', as: 'like'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :breweries
end
