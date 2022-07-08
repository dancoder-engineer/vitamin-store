class CreateReviews < ActiveRecord::Migration[7.0]
  def change
    create_table :reviews do |t|
      t.text :username
      t.text :title
      t.text :reviewtext
      t.integer :stars
      t.integer :item_id
      t.integer :user_id
      t.timestamps
    end
  end
end
