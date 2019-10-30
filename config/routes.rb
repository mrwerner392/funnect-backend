Rails.application.routes.draw do

  resources :neighborhoods
  resources :topics
  resources :users
  post '/login', to: 'login#create', as: 'login'

end
