class CreateAccounts < ActiveRecord::Migration[7.1]
  def change
  create_table :accounts do |t|
    t.belongs_to :supplier
    t.string :account_number
    add_reference :suppliers, :supplier, null: false, foreign_key: true
    t.timestamps
    end
  end
end
