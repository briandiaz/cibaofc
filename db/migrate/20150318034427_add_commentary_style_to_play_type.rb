class AddCommentaryStyleToPlayType < ActiveRecord::Migration
  def change
    add_column :play_types, :commentary, :string
  end
end
