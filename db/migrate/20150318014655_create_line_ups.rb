class CreateLineUps < ActiveRecord::Migration
  def change
    create_table :line_ups do |t|
      t.belongs_to :game, index: true
      t.belongs_to :team, index: true
      t.integer :player_1
      t.integer :player_2
      t.integer :player_3
      t.integer :player_4
      t.integer :player_5
      t.integer :player_6
      t.integer :player_7
      t.integer :player_8
      t.integer :player_9
      t.integer :player_10
      t.integer :player_11

      t.timestamps
    end
  end
end
