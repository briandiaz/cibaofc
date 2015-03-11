class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :first_name
      t.string :middle_name
      t.string :last_name
      t.string :sur_name
      t.string :sex
      t.string :identification_number
      t.date :birthdate
      t.string :phone
      t.string :mobile
      t.string :additional_phone
      t.string :email
      t.decimal :salary
      t.text :additional_information
      t.string :photo
      t.belongs_to :city, index: true

      t.timestamps
    end
  end
end
