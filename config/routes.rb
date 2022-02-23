Rails.application.routes.draw do
  root "welcome#index"

  # get '/foods', to: 'foods#index'
  resources :foods, only: [:index]
end
