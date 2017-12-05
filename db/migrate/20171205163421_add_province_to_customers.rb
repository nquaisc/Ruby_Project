class AddProvinceToCustomers < ActiveRecord::Migration[5.1]
  def change
    add_reference :customers, :prov_id, foreign_key: true
  end
end
