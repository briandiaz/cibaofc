class FixColumnNamesLineUpsLineUpsSubs < ActiveRecord::Migration
  def change
    rename_column :line_ups, :player_1, :player_1_id
    rename_column :line_ups, :player_2, :player_2_id
    rename_column :line_ups, :player_3, :player_3_id
    rename_column :line_ups, :player_4, :player_4_id
    rename_column :line_ups, :player_5, :player_5_id
    rename_column :line_ups, :player_6, :player_6_id
    rename_column :line_ups, :player_7, :player_7_id
    rename_column :line_ups, :player_8, :player_8_id
    rename_column :line_ups, :player_9, :player_9_id
    rename_column :line_ups, :player_10, :player_10_id
    rename_column :line_ups, :player_11, :player_11_id
    
    rename_column :line_up_subs, :player_1, :player_1_id
    rename_column :line_up_subs, :player_2, :player_2_id
    rename_column :line_up_subs, :player_3, :player_3_id
    rename_column :line_up_subs, :player_4, :player_4_id
    rename_column :line_up_subs, :player_5, :player_5_id
    rename_column :line_up_subs, :player_6, :player_6_id
    rename_column :line_up_subs, :player_7, :player_7_id
  end
end
