Rails.application.routes.draw do

  devise_for :users
  root 'pages#home'

  get '/home', to: 'pages#home'

end
