class AddTeamToPlay < ActiveRecord::Migration
  def change
    add_reference :plays, :team, index: true
  end
end
