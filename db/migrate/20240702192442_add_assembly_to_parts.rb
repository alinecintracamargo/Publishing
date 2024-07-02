class AddAssemblyToParts < ActiveRecord::Migration[7.1]
  def change
    add_reference :parts, :assembly, foreign_key: true
  end
end
