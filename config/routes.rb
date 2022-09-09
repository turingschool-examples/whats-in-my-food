Rails.application.routes.draw do
  root "welcome#index"
  get "/food", to: "foods#index"
end
