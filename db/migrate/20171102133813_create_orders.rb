class CreateOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|
      t.references :customer
      t.string :status
      t.decimal :total_amount

      t.timestamps
    end
  end
end
