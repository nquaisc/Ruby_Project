class Product < ApplicationRecord
    #validates :name, presense: true
    #validates :description, presense: true
    #validates :price, presense: true
    #validates :stock_quantity, presense: true
    
    has_many :line_items
    has_many :orders, :through => :line_items

    
end
