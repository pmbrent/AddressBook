class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :name, :null => false, :default => ""
      t.string :email, :null => false, :default => ""
      t.string :user_id, :null => false, :default => ""

      t.timestamps
    end

    add_index :contacts, [:user_id, :email], unique: true
    add_index(:contacts, :user_id, unique: true)
  end
end
