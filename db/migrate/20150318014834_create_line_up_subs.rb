class CreateLineUpSubs < ActiveRecord::Migration
  def change
    create_table :line_up_subs do |t|
      t.belongs_to :lineup, index: true
      t.integer :player_1
      t.integer :player_2
      t.integer :player_3
      t.integer :player_4
      t.integer :player_5
      t.integer :player_6
      t.integer :player_7

      t.timestamps
    end
  end
end
