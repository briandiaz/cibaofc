class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
      t.string :name
      t.decimal :height
      t.decimal :weight
      t.integer :shirt_number
      t.date :debut_date
      t.belongs_to :person, index: true
      t.belongs_to :team, index: true
      t.belongs_to :position, index: true

      t.timestamps
    end
  end
end
