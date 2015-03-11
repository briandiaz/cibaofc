class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.string :name
      t.string :short_name
      t.date :founded_date
      t.decimal :value
      t.belongs_to :stadium, index: true
      t.belongs_to :country, index: true
      t.belongs_to :city, index: true

      t.timestamps
    end
  end
end
