Rails.application.routes.draw do
  devise_for :users
  resources :events, only: [:index]

  root to "events#index"
end
