class CreateJoinTableAssemblyPart < ActiveRecord::Migration[5.2]
  def change
    create_join_table :Assemblies, :Parts do |t|
      t.index %i[assembly_id part_id]
      t.index %i[part_id assembly_id]
    end
  end
end
