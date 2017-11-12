Rails.application.routes.draw do

  devise_for :admins
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }

  root 'pages#home'

  get '/home', to: 'pages#home'

  resources :products, only: [:index, :show]

  namespace :admin do
    resources :products
  end

end
