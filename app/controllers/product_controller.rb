class ProductController < ApplicationController
  before_action :set_product, only: [:show, :edit, :update, :destroy]
  def index
    @products = Product.all
    
  end

  def show
    @products = Product.find(params[:id])
  end
  
  
  
  private
  
  def set_product
    @products = Product.find(params[:id])
  end
  
  def product_params
    params.require(:product).permit(:name, :description, :price, :stock_quantity)
  end
  
end
