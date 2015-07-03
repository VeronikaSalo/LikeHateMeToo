class AddEmailFirstLastNameToUsers < ActiveRecord::Migration
  def change
    add_column :users, :email, :string unless column_exists?(:users, :email)
    add_column :users, :first_name, :string unless column_exists?(:users, :first_name)
    add_column :users, :last_name, :string unless column_exists?(:users, :last_name)
  end
end
