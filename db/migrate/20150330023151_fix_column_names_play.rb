class FixColumnNamesPlay < ActiveRecord::Migration
  def change
    rename_column :plays, :by,         :by_id
    rename_column :plays, :assist_by,  :assist_by_id
  end
end
