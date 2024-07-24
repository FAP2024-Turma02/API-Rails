# Tutorial

1. Criando novo projeto em rails
-     rails new shoppTex --api
-     cd shopptex
2. Gerando os modelos e controladores:
-     rails generate model Product name:string price:float photo:string is_promotion:boolean
-     rails generate controller Product
-     rails generate controller Info
3. Execute a migração para o banco de dados
-     rails db:migrate
4. Popule o bando de dados
-  No arquivo db/seeds.rb
 ```
Product.create([
  { name: 'Mouse Sem Fio', price: 29.99, photo: 'https://cdn.shoppub.io/cdn-cgi/image/w=1000,h=1000,q=80,f=auto/oficinadosbits/media/uploads/produtos/foto/xaxttong/file.png', is_promotion: true },
  { name: 'Teclado', price: 49.99, photo: 'https://cdn.awsli.com.br/600x700/1591/1591214/produto/245788055/tecl2-8xibrwmggn.png', is_promotion: false },
  { name: 'Monitor 24"', price: 199.99, photo: 'https://images.kabum.com.br/produtos/fotos/sync_mirakl/294985/Monitor-LG-23-8-LED-Full-HD-75Hz-IPS-HDMI-VGA-Freesync-Preto-24mp400-b_1721414917_gg.jpg', is_promotion: true },
  { name: 'Cabo HDMI', price: 14.99, photo: 'https://images.tcdn.com.br/img/img_prod/774024/cabo_de_video_hdmi_x_hdmi_2_0_18gbps_kramer_cabo_hdmi_2_0_ate_4k_60hz_4_4_4_8579_1_20200619090341.jpg', is_promotion: false },
  { name: 'Hub USB', price: 19.99, photo: 'https://cdn.awsli.com.br/2500x2500/1180/1180728/produto/22664427230bfb41f8f.jpg', is_promotion: true
 ```
5. Rode o seed
-     rails db:seed
6. Implemente o controlador de produtos
-  No arquivo app/controllers/products_controller.rb
```
class ProductsController < ApplicationController
  def index
    @products = Product.all
    render json: @products
  end
end
```
7. Implemente o controlador de Info
- app/controllers/info_controller.rb
```
class InfoController < ApplicationController
    def index
        shop_info = {
          name: "TechTex",
          color: "#EFC3CA",
          owner: "Nataly Carvalho",
          department: "Vendas"
        }
        render json: shop_info
      end
end

```
8. Defina as rotas
- No arquivo config/routes.rb
```
Rails.application.routes.draw do
   resources :products, only: [:index]
  get 'info', to: 'info#index'
  get 'products', to: 'products#index'
end

```
9. Para testar a api inicie o servidor
-     rails server

10. Teste os endpoints:
-     curl -X GET -H "Accept: application/json" "http://localhost:3000/products"
-     curl -X GET -H "Accept: application/json" "http://localhost:3000/info"
11. Adicionando o CROS
- No arquivo Gemfile adicione 
-     gem 'rack-cors'
12. Instale a gem
-     bundle install
13. Na pasta config/initializers/cros.rb
- Adicione
```
  Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    origins "*"

    resource "*",
      headers: :any,
      methods: [:get, :post, :put, :patch, :delete, :options, :head]
  end
end
```
- (OBS: pode ja esta no arquivo apenas comentado dependendo da versão do rails, descomente e adicone o '*' no lugar de 'https://example.com')
14. Rode a api para conferir se esta tudo certo
-     rails server

