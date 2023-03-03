class CreateTrainers < ActiveRecord::Migration[6.1]
  def change
    create_table :trainers do |t|
      t.string :name
      t.string :occupation
      t.integer :mon1_id
      t.integer :mon2_id
      t.integer :mon3_id
      t.integer :mon4_id
      t.integer :mon5_id
      t.integer :mon6_id
    end
  end
end
