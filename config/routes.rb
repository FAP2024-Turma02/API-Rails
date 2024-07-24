Rails.application.routes.draw do
  get 'render/index'
  resources :products, only: [:index]
  get 'info', to: 'info#index'
  get 'products', to: 'products#index'
end
