class CreateAddresses < ActiveRecord::Migration[7.0]
  def change
    create_table :addresses do |t|

      t.string :street1
      t.string :street2
      t.string :town
      t.string :state
      t.string :zipcode
      
      t.integer :order_id
      t.integer :user_id
      
      t.timestamps
    end
  end
end
