Rails.application.routes.draw do
  get 'tops/main'
  post 'tops/login'
  get 'tops/logout'
  resources :tops
  resources :users
  resources :tweets
  resources :likes
  root 'tweets#index'
end
