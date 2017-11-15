class Product < ApplicationRecord
    validates :name, presence: true
    validates :description, presence: true
    validates :price, presence: true
    validates :stock_quantity, presence: true
    belongs_to :category

    
end
