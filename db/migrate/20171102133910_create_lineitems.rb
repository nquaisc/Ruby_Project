class CreateLineitems < ActiveRecord::Migration[5.1]
  def change
    create_table :lineitems do |t|
      t.references :product
      t.references :order
      t.integer :quantity
      t.decimal :price

      t.timestamps
    end
  end
end
