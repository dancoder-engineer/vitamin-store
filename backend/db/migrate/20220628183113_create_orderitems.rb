class CreateOrderitems < ActiveRecord::Migration[7.0]
  def change
    create_table :orderitems do |t|
      t.integer :order_id
      t.integer :item_id
      t.integer :amount
      t.timestamps
    end
  end
end
