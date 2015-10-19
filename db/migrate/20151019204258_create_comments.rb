class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :body, null: false
      t.integer :author_id, null: false
      t.integer :subject_user_id, null: false
      t.integer :subject_contact_id, null: false

      t.timestamps null: false
    end

    add_index :comments, :author_id
    add_index :comments, :subject_contact_id
    add_index :comments, :subject_user_id
  end
end
