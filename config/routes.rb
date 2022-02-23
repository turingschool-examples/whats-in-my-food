# app/config/routes.rb

Rails.application.routes.draw do
  root "welcome#index"

  get '/foods', to: 'foods#index'
end
