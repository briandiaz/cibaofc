class CreatePlays < ActiveRecord::Migration
  def change
    create_table :plays do |t|
      t.time :time
      t.decimal :x_coordinate
      t.decimal :y_coordinate
      t.integer :by
      t.integer :assist_by
      t.belongs_to :playtype, index: true
      t.belongs_to :game, index: true

      t.timestamps
    end
  end
end
