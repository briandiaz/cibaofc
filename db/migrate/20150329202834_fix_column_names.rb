class FixColumnNames < ActiveRecord::Migration
  def change
    rename_column :games, :home_team, :home_team_id
    rename_column :games, :away_team, :away_team_id
  end
end
