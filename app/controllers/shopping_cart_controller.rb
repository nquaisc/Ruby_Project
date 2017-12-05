class ShoppingCartController < ApplicationController
 
  def index
      @products = Product.all
  end

end
