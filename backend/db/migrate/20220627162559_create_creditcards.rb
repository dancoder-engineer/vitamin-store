class CreateCreditcards < ActiveRecord::Migration[7.0]
  def change
    create_table :creditcards do |t|

      t.string :number
      t.string :expiration
      t.string :cvc

      t.string :street1
      t.string :street2
      t.string :town
      t.string :state
      t.string :zipcode
      t.integer :user_id

      t.integer :address_id


      t.timestamps
    end
  end
end
