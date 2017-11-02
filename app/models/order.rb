class Order < ApplicationRecord
    has_many :line_items
    has_many :products, :through => :line_items
    belongs_to :customer
end
