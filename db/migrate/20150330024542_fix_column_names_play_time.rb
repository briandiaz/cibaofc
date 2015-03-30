class FixColumnNamesPlayTime < ActiveRecord::Migration
  def change
    remove_column :plays, :time
    add_column :plays, :time, :integer
  end
end
