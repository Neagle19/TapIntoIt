Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#landing'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :breweries
end
