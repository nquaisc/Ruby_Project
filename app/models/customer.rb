class Customer < ApplicationRecord
    has_many :orders
    validates :first_name, presense: true
    validates :last_name, presense: true
    validates :city, presense: true
    validates :province, presense: true
    validates :country, presense: true
    validates :email, presense: true
    validates :address, presense: true
    validates :postal_code, presense: true
    
end
