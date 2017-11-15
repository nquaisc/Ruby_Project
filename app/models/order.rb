class Order < ApplicationRecord
    has_many :line_items
    has_many :products, :through => :line_items
    belongs_to :customer
    
    validates :customer, presence: true
    validates :status, presence: true
    validates :total_amount, presence: true
    
    
    
end
