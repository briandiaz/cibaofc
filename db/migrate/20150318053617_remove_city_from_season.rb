class RemoveCityFromSeason < ActiveRecord::Migration
  def change
    remove_reference :seasons, :city, index: true
  end
end
