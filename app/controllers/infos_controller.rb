class InfosController < ApplicationController
  def get
    render json: Info.first, only: %i[name owner color department]
  end
end
