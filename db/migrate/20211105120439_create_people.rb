class CreatePeople < ActiveRecord::Migration[5.2]
  def change
    create_table :people do |t|
      t.date :birth_date
      t.string :first_name
      t.string :last_name
      t.references :country, foreign_key: true

      t.timestamps
    end
  end
end
