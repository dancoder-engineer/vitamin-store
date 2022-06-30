class CreateVitamins < ActiveRecord::Migration[7.0]
  def change
    create_table :vitamins do |t|
      t.string :name
      t.text :whatsitdo
      t.timestamps
    end
  end
end
