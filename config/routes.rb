Rails.application.routes.draw do
  resources :addresses
  devise_for :users

  root to: "home#index"

  resources :home, only: [:index]
  resources :address_categories
end
