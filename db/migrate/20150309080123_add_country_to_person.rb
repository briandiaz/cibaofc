class AddCountryToPerson < ActiveRecord::Migration
  def change
    add_reference :people, :country, index: true
  end
end
