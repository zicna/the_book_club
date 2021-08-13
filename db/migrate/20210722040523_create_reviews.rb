class CreateReviews < ActiveRecord::Migration[6.1]
  def change
    create_table :reviews do |t|
      t.belongs_to :book, null: false, foreign_key: true
      t.belongs_to :user, null: true, foreign_key: true
      t.text :content
      t.integer :mark

      t.timestamps
    end
  end
end
