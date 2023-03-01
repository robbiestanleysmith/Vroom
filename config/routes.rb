Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  resources :cars do
    resources :bookings, only: [:new, :create, :edit, :update]
  end
  get "dashboard", to: "pages#dashboard"
end
