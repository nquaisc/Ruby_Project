class Customer < ApplicationRecord
    has_many :orders
    validates :first_name, presence: true
    validates :last_name, presence: true
    validates :city, presence: true
    validates :province, presence: true
    validates :country, presence: true
    validates :email, presence: true 
    validates :address, presence: true
    validates :postal_code, presence: true
    
    
    def name
        first_name + " " + last_name
    end
    
end
