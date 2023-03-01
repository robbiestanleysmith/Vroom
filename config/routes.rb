Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get "bookings/:id/confirm", to: "bookings#confirm", as: :confirm_booking
  get "bookings/:id/cancel", to: "bookings#cancel", as: :cancel_booking
  get "bookings/:id/decline", to: "bookings#decline", as: :decline_booking

  resources :cars do
    resources :bookings, only: [:new, :create, :edit, :update]

  end
  get "dashboard", to: "pages#dashboard"


end
