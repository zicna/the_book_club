class AddColumnCreatedByToCategories < ActiveRecord::Migration[6.1]
  def change
    add_column :categories, :created_by, :integer
  end
end
