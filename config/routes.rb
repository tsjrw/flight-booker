Rails.application.routes.draw do
  resources :flights, only: :index
  root 'flights#index'
  resources :bookings, only: [:show, :new, :create]
end
