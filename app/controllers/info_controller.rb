class InfoController < ApplicationController
  def show
    shop_info = {
    name: "Pegorara Store",
    color: "#505581",
    owner: "Kennedy",
    department: "Colecionaveis"
    }
  render json: shop_info
  end
end
