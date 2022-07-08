class CreateItems < ActiveRecord::Migration[7.0]
  def change
    create_table :items do |t|
      t.string :name
      t.string :productname
      t.string :brand
      t.string :dose
      t.integer :pillamount
      t.float :price
      t.string :pilltype
      t.text :blurb
      t.string :picurl
      t.boolean :featured
      t.timestamps
    end
  end
end
