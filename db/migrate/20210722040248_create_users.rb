class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :password_digest
      t.string :username
      t.boolean :admin, :default => false
      t.date :birth_date

      t.timestamps
    end
  end
end
