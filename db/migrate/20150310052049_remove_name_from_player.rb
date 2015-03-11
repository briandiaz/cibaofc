class RemoveNameFromPlayer < ActiveRecord::Migration
  def change
    remove_column :players, :name, :string
  end
end
