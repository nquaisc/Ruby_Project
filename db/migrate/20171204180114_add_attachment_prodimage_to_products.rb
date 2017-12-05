class AddAttachmentProdimageToProducts < ActiveRecord::Migration[5.1]
  def self.up
    change_table :products do |t|
      t.attachment :prodimage
    end
  end

  def self.down
    remove_attachment :products, :prodimage
  end
end
