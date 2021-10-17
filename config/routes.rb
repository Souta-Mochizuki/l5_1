Rails.application.routes.draw do
  get 'likes/index'
  get 'tops/main'
  get 'tweets/index'
  get 'users/index'
  post 'tops/login'
  get 'tops/logout'
  resources :tops
  resources :users
  resources :tweets
  resources :likes
  root 'tweets#index'
end
