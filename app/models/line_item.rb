class LineItem < ApplicationRecord
    validates :quantity, presence: true
    validates :price, presence: true
    belongs_to :product
    belongs_to :order
end
