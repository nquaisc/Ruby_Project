class CreateContacts < ActiveRecord::Migration[5.1]
  def change
    create_table :contacts do |t|
      t.string :title
      t.string :message
      t.string :email
      t.string :phone
      t.string :address
      t.string :postal
      t.string :city
      t.string :province

      t.timestamps
    end
  end
end
