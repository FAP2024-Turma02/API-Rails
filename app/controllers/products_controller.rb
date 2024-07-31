class ProductsController < ActionController::API
    def index
      products = Product.all
      render json: products, only: [:photo, :name, :price, :is_promotion]
    end
  end
  