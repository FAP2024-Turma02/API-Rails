class InfoController < ApplicationController
  def index
      shop_info = {
        name: "TechBoom",
        color: "#EFC3CA",
        owner: "Mathias Soares",
        department: "Vendas"
      }
      render json: shop_info
    end
end
