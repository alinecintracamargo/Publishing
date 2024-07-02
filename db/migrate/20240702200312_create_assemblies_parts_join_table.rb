class CreateAssembliesPartsJoinTable < ActiveRecord::Migration[6.1]
  def change
    create_table :assemblies_parts, id: false do |t|
      t.references :assembly, null: false, foreign_key: true
      t.references :part, null: false, foreign_key: true
    end

    # Adicionar índices únicos para evitar duplicações
    add_index :assemblies_parts, [:assembly_id, :part_id], unique: true
  end
end
