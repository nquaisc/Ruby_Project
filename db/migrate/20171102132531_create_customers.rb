class CreateCustomers < ActiveRecord::Migration[5.1]
  def change
    create_table :customers do |t|
      t.string :first_name
      t.string :last_name
      t.string :address
      t.string :postal_code
      t.string :city
      t.string :province
      t.string :country
      t.string :email

      t.timestamps
    end
  end
end
