class CreateMons < ActiveRecord::Migration[6.1]
  def change
    create_table :mons do |t|
      t.string :nickname
      t.string :species
      t.string :ability
      t.string :move1
      t.string :move2
      t.string :move3
      t.string :move4
    end
  end
end
