class CreateBooks < ActiveRecord::Migration[7.1]
  def change
    create_table :books do |t|
      t.datetime :publishing_at
      t.references :author, index: true, null: false, foreign_key: true

      t.timestamps
    end
  end
end
