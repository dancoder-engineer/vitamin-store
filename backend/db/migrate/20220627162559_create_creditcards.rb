class CreateCreditcards < ActiveRecord::Migration[7.0]
  def change

    create_table :creditcards do |t|

      t.string :nameoncard
      t.string :number
      t.string :expiration
      t.string :cvc


      t.integer :user_id
      t.integer :address_id


      t.timestamps
    end
  end
end
