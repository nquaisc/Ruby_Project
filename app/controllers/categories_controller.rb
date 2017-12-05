class CategoriesController < ApplicationController
  
  
  
  def index
    
    @product = Product.all
    @categories = Category.all
    @cat = Category.new
    
    if params[:keyword]
      @categories = Category.where("name = ? ", params[:category][:id])
      @product = Product.where("name LIKE '%#{params[:keyword]}%'")#.where("category_id = #{params[:category][:id]}")
      #@categories = Category.search(params[:keyword]).order("name ASC")
    end
    
  end

end
