Rails.application.routes.draw do
  resources :flights, only: :index
  root 'flights#index'
  resources :bookings, only: [:show, :new, :create]
  mount LetterOpenerWeb::Engine, at: "/letter_opener" if Rails.env.development?
end
