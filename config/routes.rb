Rails.application.routes.draw do
   resources :products, only: [:index]
  get 'info', to: 'info#index'
  get 'products', to: 'products#index'
end
