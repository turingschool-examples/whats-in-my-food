Rails.application.routes.draw do
  root "welcome#index"
  get '/foods', to: 'foods#search', as: 'foods'
end
