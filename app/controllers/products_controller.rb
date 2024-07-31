class ProductsController < ApplicationController
  def all
    render json: Product.all, only: %i[name photo price is_promotion]
  end
end
