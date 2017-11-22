class CategoriesController < ApplicationController
  
  
  
  def index
    
    @product = Product.all
    
    if params[:keyword]
      @categories = Category.search(params[:keyword]).order("name ASC")
    end
    
  end

end
