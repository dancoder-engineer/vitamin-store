class CreateOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :orders do |t|
      t.integer :user_id
      t.string :fulfilled
      t.string :fulfilled_by
      t.float :subtotal
      t.float :stax
      t.float :grandtotal




      t.timestamps
    end
  end
end
