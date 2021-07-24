class CreateBooks < ActiveRecord::Migration[6.1]
  def change
    create_table :books do |t|
      t.belongs_to :author, foreign_key: true
      t.belongs_to :category, null: false, foreign_key: true
      t.string :title
      t.string :invt
      t.text :description
      t.decimal :price

      t.timestamps
    end
  end
end
