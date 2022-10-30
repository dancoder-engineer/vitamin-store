class CreateItemvitamins < ActiveRecord::Migration[7.0]
  def change
    create_table :itemvitamins do |t|
      t.integer :item_id
      t.integer :vitamin_id
      t.timestamps
    end
  end
end
