class CreatePeople < ActiveRecord::Migration[5.2]
  def change
    create_table :people do |t|
      t.string :given, null: false
      t.string :family, null: false
      t.string :given_ph
      t.string :family_ph
      t.string :given_e
      t.string :family_e
      t.string :gender
      t.date :date_of_birth
      t.string :zip
      t.string :address
      t.string :address_ph
      t.string :phone
      t.string :email

      t.timestamps null: false
    end
  end
end
