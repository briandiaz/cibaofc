class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.datetime :date
      t.belongs_to :round, index: true
      t.integer :home_team
      t.integer :away_team
      t.belongs_to :stadium, index: true

      t.timestamps
    end
    
  end
end
