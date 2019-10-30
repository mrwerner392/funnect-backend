Rails.application.routes.draw do

  resources :topics
  resources :users
  post '/login', to: 'login#create', as: 'login'

end
