Rails.application.routes.draw do

  resources :users
  post '/login', to: 'login#create', as: 'login'

end
