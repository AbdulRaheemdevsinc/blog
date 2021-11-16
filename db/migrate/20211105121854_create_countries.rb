class CreateCountries < ActiveRecord::Migration[5.2]
  def change
    create_table :countries do |t|
      t.integer :gdb
      t.string :name

      t.timestamps
    end
  end
end
