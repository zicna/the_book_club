class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :first_name, :null => false
      t.string :last_name, :null => false
      t.string :email, :null => false
      t.string :password_digest, :null => false
      # t.string :username, :null => false
      t.boolean :admin, :default => false
      t.date :birth_date

      t.timestamps
    end
  end
end
