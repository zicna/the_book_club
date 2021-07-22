class CreateAuthors < ActiveRecord::Migration[6.1]
  def change
    create_table :authors do |t|
      t.string :first_name
      t.string :last_name
      t.string :image
      t.date :birth_date
      t.date :death_date
      t.string :wiki_page

      t.timestamps
    end
  end
end
