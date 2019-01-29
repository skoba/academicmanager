class CreateDailyWritings < ActiveRecord::Migration[5.2]
  def change
    create_table :daily_writings do |t|
      t.references :person, index: true, foreign_key: true
      t.datetime :start_time
      t.datetime :end_time
      t.decimal :words
      t.text :memo

      t.timestamps null: false
    end
  end
end
