class CreateSeasons < ActiveRecord::Migration
  def change
    create_table :seasons do |t|
      t.string :name
      t.integer :year
      t.belongs_to :country, index: true
      t.belongs_to :city, index: true

      t.timestamps
    end
  end
end
