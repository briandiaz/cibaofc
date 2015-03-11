class CreateTechnicalStaffs < ActiveRecord::Migration
  def change
    create_table :technical_staffs do |t|
      t.belongs_to :person, index: true
      t.belongs_to :team, index: true
      t.belongs_to :team, index: true
      t.belongs_to :tech_role, index: true

      t.timestamps
    end
  end
end
