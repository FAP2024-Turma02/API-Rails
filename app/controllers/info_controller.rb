class InfoController < ActionController::Base
    def show
      shop_info = {
        name: "Lojas GM BR",
        color: "#a0a168",
        owner: "Felipe Rocha Silveira",
        department: "Loja de Informatica"
      }
      render json: shop_info
    end
  end