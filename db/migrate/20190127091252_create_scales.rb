class CreateScales < ActiveRecord::Migration[5.2]
  def change
    create_table :scales do |t|
      t.integer :f_number
      t.integer :f_size
      t.datetime :t_measured

      t.timestamps
    end
  end
end
