class AddValueToPlayType < ActiveRecord::Migration
  def change
    add_column :play_types, :value, :integer
  end
end
