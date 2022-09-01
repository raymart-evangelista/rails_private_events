Rails.application.routes.draw do
  devise_for :users
  resources :events, only: [:index, :new, :create, :show, :edit, :update]
  resources :users, only: [:show]
  resources :attendees_events, only: [:create, :new]

  root "events#index"

  # post '/users/:user_id/events/:id', to: "events_attendees#create", as: "create_attending_event"
  # post '/users/:user_id/events/:id', to: "events_attendees#create", as: "create_attending_event"
  # get '/users/:id/attended_events', to: "users#show_attended_events", as: "show_attended_events"

  post '/users/:current_user.id/events/:id', to: 'attendees_events#create'
  # post '/events/:id/edit', to: 'events#edit'
end
