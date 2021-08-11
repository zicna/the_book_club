class AddColumnCreatedByToAuthor < ActiveRecord::Migration[6.1]
  def change
    add_column :authors, :created_by, :integer
    #Ex:- add_column("admin_users", "username", :string, :limit =>25, :after => "email")
  end
end
