class CreateCartitems < ActiveRecord::Migration[7.0]
  def change
    create_table :cartitems do |t|
      t.integer :cart_id
      t.integer :item_id

      t.timestamps
    end
  end
end
