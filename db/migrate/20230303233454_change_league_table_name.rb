class ChangeLeagueTableName < ActiveRecord::Migration[6.1]
  def change
      rename_table :league, :leagues
  end
end
