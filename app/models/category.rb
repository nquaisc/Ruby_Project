class Category < ApplicationRecord
    
    has_many :products
    
    validates :name, presence: true
    
    def self.search(keyword)
        where("name LIKE ?", "%#{keyword}%")
    end
    
end
