Rails.application.routes.draw do
  root "welcome#index"
  get '/foods', to: 'welcome#search', as: 'foods'
end
