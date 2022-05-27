Rails.application.routes.draw do
  root "welcome#index"

  get '/foods', to: 'search#index', as: '/foods'
end
