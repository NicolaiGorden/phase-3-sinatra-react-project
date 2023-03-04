class AddForeignLeagueIdForTrainer < ActiveRecord::Migration[6.1]
  def change
    add_column :trainers, :league_id, :integer
  end
end
