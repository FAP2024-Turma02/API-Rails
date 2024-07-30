Rails.application.routes.draw do


  resources :products do  #------------ Gera todos os comandos(GET, POST, PUT, DELETE)
    collection do
      get 'operating_systems', to: 'products#operating_systems'
      get 'electronics', to: 'products#electronics'
    end
  end   
  #Desta forma fica mais facil fazer um controller com tudo

  get '/info', to: 'info#show'
  #get '/products', to: 'products#index'       #Gera apenas o comando GET
  #post '/products/create', to: 'products#create'       #Gera apenas o comando POST
  #A vantagem dessa forma, que eu vejo, é a possibilidade de mudança de rota, podendo colocar algo mais especifico na url


end
