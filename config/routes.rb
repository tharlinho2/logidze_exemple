Rails.application.routes.draw do
  devise_for :users, path: 'user_area'

  root to: redirect('/user_area')

  namespace :user_area do
    root to: "home#index"

    get 'home/index'
  end
end
