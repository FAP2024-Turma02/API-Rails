class InfoController < ApplicationController #::Base
    def show 
        shop_info = { 
        name: "Minha loja", 
        color: "#a0a168", 
        owner: "Carlos Henrique Guimarães", 
        department: "Produtos Gourmet" 
        } 
    render json: shop_info
    end
end