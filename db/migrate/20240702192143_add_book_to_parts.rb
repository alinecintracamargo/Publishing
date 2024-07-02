class AddBookToParts < ActiveRecord::Migration[7.1]
  def change
    add_reference :parts, :book, null: false, foreign_key: true
  end
end
