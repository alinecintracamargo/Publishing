class RemoveSupplierIdFromSuppliers < ActiveRecord::Migration[7.1]
  def change
    remove_column :suppliers, :supplier_id, :bigint
  end
end
