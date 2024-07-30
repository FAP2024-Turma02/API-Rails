Rails.application.routes.draw do
  # get "up" => "rails/health#show", as: :rails_health_check
  get '/info', to: 'info#show'
  get '/products', to: 'products#index'

end
