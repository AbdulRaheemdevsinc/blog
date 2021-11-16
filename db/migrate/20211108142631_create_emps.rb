class CreateEmps < ActiveRecord::Migration[5.2]
  def change
    create_table :emps do |t|
      t.string :account
      t.integer :emp_id
      t.integer :manager_id

      t.timestamps
    end
  end
end
