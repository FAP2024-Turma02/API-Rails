class ProductsController < ApplicationController

    def index
      if params[:type].present?
        @products = Product.where(type: params[:type]).order(created_at: :desc)
      else
        @products = Product.order(created_at: :desc)
      end
  
      render json: @products
    end
  
    def operating_systems
      @products = OperatigSystem.order(created_at: :desc)
      render json: @products
    end
  
    def electronics
      @products = Eletronic.order(created_at: :desc)
      render json: @products
    end
  
    def create
      @product = Product.new(product_params)
  
      if @product.save
        render json: @product, status: :created
      else
        render json: @product.errors, status: :unprocessable_entity
      end
    end
  
    def show
      @product = Product.find(params[:id])
  
      render json: @product
    end
  
    def update
      @product = Product.find(params[:id])
  
      if @product.update(product_params)
        render json: @product
      else
        render json: @product.errors, status: :unprocessable_entity
      end
    end
  
    def destroy
      @product = Product.find(params[:id])
  
      if @product.destroy
        render json: @product, status: :ok
      else
        render json: @product.errors, status: :not_found
      end
    end
  
    private
  
    def product_params
      params.permit(:name, :price, :photo, :is_promotion, :type, :os_type, :voltage)
    end
  end
  