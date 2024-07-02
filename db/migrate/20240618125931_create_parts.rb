class CreateParts < ActiveRecord::Migration[7.1]
  def change
    create_table :parts do |t|
      t.string :part_number
      t.belongs_to :supplier
      t.timestamps
    end
  end
end
