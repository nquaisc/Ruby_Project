class CheckoutController < ApplicationController
  def index
  end
  
  def invoice
    @products = Product.all
  end
end
