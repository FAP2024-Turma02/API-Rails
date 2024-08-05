Rails.application.routes.draw do
   get '/info', to: 'info#show' 
   get '/products', to: 'products#index'
end
 
