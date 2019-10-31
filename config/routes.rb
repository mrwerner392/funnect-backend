Rails.application.routes.draw do

  resources :post_interests
  resources :messages
  resources :events
  resources :posts
  resources :neighborhoods
  resources :topics
  resources :users
  post '/login', to: 'login#create', as: 'login'

end
