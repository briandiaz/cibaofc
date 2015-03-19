class CreatePlayTypes < ActiveRecord::Migration
  def change
    create_table :play_types do |t|
      t.string :name

      t.timestamps
    end
  end
end
