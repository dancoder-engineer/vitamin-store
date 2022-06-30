class CreateOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :orders do |t|
      t.integer :items
      t.integer :amounts
      t.string :fulfilled
      t.string :fulfilled_by


      t.integer :user_id
      t.integer :address_id
      t.integer :creditcard_id

      t.timestamps
    end
  end
end
