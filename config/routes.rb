Rails.application.routes.draw do

  get 'transactions/new'

  post 'transactions/create'

  devise_for :admins
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }

  root 'products#index'

  get '/home', to: 'pages#home'
  post '/sendmail', to: 'pages#sendmail'

  resources :products, only: [:index, :show]

  resource :cart, only: [:show]

  post 'cart/:product_id', to: 'carts#add', as: 'add_to_cart'
  delete 'cart/:product_id', to: 'carts#remove', as: 'remove_from_cart'

  namespace :admin do
    resources :products
  end

  get '/apis/retrieve', to: 'apis#retrieve'

end
