class InfoController < ApplicationController
    def index
        shop_info = {
        name: "TechTex",
        color: "#85E8D8",
        owner: "Juliana Almeida",
        department: "Vendas"
    }
    render json: shop_info
    end
end
