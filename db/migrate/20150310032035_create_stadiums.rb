class CreateStadiums < ActiveRecord::Migration
  def change
    create_table :stadiums do |t|
      t.string :name
      t.date :founded_date
      t.decimal :length
      t.decimal :width
      t.integer :capacity
      t.string :photo
      t.belongs_to :country, index: true
      t.belongs_to :city, index: true

      t.timestamps
    end
  end
end
