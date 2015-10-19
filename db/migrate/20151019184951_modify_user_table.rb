class ModifyUserTable < ActiveRecord::Migration
  def change
    remove_column :users, :name
    remove_column :users, :email
    add_column :users, :username, :string, :null => false, :unique => true, :default => ""
  end
end
