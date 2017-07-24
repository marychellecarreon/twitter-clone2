class AddUsernameToUsers < ActiveRecord::Migration[5.1]
  def change #anything of this method, is translated to SQL code and modified the database (currently, SQlite)
  	add_column :users, :username, :string #add a new column to table "users" called "username" and of type "string"
  	add_index :users, :username, unique: true #first, index usernames for quick (rapid) lookup, second, ensure usernames are always unique.
  end
end
