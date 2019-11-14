Rails.application.routes.draw do

  resources :event_attendees
  resources :user_interests
  resources :interests
  resources :post_interests
  resources :messages
  resources :events
  resources :posts
  resources :neighborhoods
  resources :topics
  resources :users
  post '/login', to: 'login#create', as: 'login'
  get '/users/:id/created_posts', to: 'users#created_posts'
  get '/users/:id/posts_interested_in', to: 'users#posts_interested_in'
  get '/users/:id/available_posts', to: 'users#available_posts'
  get '/users/:id/created_events', to: 'users#created_events'
  get '/users/:id/events_attended', to: 'users#events_attended'
  patch '/events/:id/update_time', to: 'events#update_time'
  patch '/events/:id/update_location', to: 'events#update_location'

  mount ActionCable.server => '/cable'

end
