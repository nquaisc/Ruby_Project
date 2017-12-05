class ProductController < ApplicationController
  before_action :set_product, only: [:show, :edit, :update, :destroy]
  
  def index
    @products = Product.all.page(params[:page]).per(5)
    
    if params[:keyword]
      @products = Product.search(params[:keyword]).order("name ASC").page(params[:page]).per(5)
    
    end
    
  end

  def show
    @products = Product.find(params[:id])
  end
  
  def create
    @user = User.create( user_params )
  end
  
  def add_cart
    @product = Product.where("id = #{params[:id]}").first
    if session[:cart].nil?
      session[:cart] = Array.new
    else
      session[:cart].push(@product.id)
    end
  end
  
  
  
  private
  
  def set_product
    @products = Product.find(params[:id])
  end
  
  def product_params
    params.require(:product).permit(:name, :description, :price, :stock_quantity)
  end
  
  def user_params
    params.require(:user).permit(:prodimage)
  end
  
end
