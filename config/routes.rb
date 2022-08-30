Rails.application.routes.draw do
  devise_for :users
  resources :events, only: [:index, :new, :create, :show]
  resources :users, only: [:show]
  resources :events_attendees, only: [:create, :new]

  root "events#index"

  # post '/users/:user_id/events/:id', to: "events_attendees#create", as: "create_attending_event"
  # post '/users/:user_id/events/:id', to: "events_attendees#create", as: "create_attending_event"
  # get '/users/:id/attended_events', to: "users#show_attended_events", as: "show_attended_events"
end
