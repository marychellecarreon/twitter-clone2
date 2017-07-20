Rails.application.routes.draw do
  devise_for :users
  get 'posts/index'
  resources :posts do
  end
  root 'posts#index'
end
