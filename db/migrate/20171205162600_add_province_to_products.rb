class AddProvinceToProducts < ActiveRecord::Migration[5.1]
  def change
    add_reference :products, :prov_id, foreign_key: true
  end
end
