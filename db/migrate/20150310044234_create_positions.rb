class CreatePositions < ActiveRecord::Migration
  def change
    create_table :positions do |t|
      t.string :name
      t.string :short_name
      t.string :photo

      t.timestamps
    end
  end
end
