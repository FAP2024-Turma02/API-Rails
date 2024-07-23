Rails.application.routes.draw do
  Rails.application.routes.draw do
    resources :products, only: [:index]
    get 'info', to: 'info#index'
  end
  
end
