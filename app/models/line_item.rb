class LineItem < ApplicationRecord
    #validates :quantity, presense: true
    #validates :price, presense: true
    belongs_to :product
    belongs_to :order
end
