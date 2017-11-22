class ProductController < ApplicationController
  before_action :set_product, only: [:show, :edit, :update, :destroy]
  def index
    @products = Product.all
    
    
    if params[:keyword]
      @products = Product.search(params[:keyword]).order("name ASC")
    
    end
    
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
