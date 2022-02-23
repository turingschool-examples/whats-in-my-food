# app/config/routes.rb

Rails.application.routes.draw do
  root "welcome#index"

  resources :foods, only: [:index]
end
