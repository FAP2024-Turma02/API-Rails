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
