class AddColumnCreatedByToBooks < ActiveRecord::Migration[6.1]
  def change
    add_column :books, :created_by, :integer
  end
end
