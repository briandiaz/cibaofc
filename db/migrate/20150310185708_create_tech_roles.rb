class CreateTechRoles < ActiveRecord::Migration
  def change
    create_table :tech_roles do |t|
      t.string :name
      t.string :short_name
      t.string :photo

      t.timestamps
    end
  end
end
