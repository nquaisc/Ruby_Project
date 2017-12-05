class Product < ApplicationRecord
    validates :name, presence: true
    validates :description, presence: true
    validates :price, presence: true
    validates :stock_quantity, presence: true
    belongs_to :category
    
    has_attached_file :prodimage, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
    validates_attachment_content_type :prodimage, content_type: /\Aimage\/.*\z/
    
 def prodimage_attributes=(attributes)
     prodimage.clear if has_destroy_flag?(attributes) && !prodimage.dirty?
 end

    def self.search(keyword)
        where("name LIKE ?", "%#{keyword}%")
    end
    
end
