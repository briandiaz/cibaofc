class CreateSubstitutions < ActiveRecord::Migration
  def change
    create_table :substitutions do |t|
      t.time :time
      t.integer :player_in
      t.integer :player_out
      t.belongs_to :game, index: true
      t.belongs_to :team, index: true

      t.timestamps
    end
  end
end
