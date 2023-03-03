class CreateLeagues < ActiveRecord::Migration[6.1]
  def change
    create_table :leagues do |t|
      t.string :name
      t.integer :gym1_id
      t.integer :gym2_id
      t.integer :gym3_id
      t.integer :gym4_id
      t.integer :gym5_id
      t.integer :gym6_id
      t.integer :gym7_id
      t.integer :gym8_id
      t.integer :e41_id
      t.integer :e42_id
      t.integer :e43_id
      t.integer :e44_id
      t.integer :champion_id
    end
  end
end
