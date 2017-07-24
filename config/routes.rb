Rails.application.routes.draw do

  get '/home' =>  'pages#Home'
  get '/user/' => 'pages#Profile'
  get '/Explore' => 'pages#Explore'
  get '/index' => 'pages#index'

  devise_for :users
  get 'pages/index'
  resources :posts do
  end


  root 'pages#Home', page: "home"

end
