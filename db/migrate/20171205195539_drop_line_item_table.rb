class DropLineItemTable < ActiveRecord::Migration[5.1]
  def up
    drop_table :line_items
  end
  
  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
