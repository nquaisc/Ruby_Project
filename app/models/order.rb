class Order < ApplicationRecord

    belongs_to :customer
    
    validates :customer, presence: true
    validates :status, presence: true
    validates :total_amount, presence: true
    
    
    
end
