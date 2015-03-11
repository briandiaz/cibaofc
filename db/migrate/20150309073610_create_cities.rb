class CreateCities < ActiveRecord::Migration
  def change
    create_table :cities do |t|
      t.string :name
      t.string :iso
      t.belongs_to :country, index: true

      t.timestamps
    end
  end
end
