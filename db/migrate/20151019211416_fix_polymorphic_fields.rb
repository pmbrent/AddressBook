class FixPolymorphicFields < ActiveRecord::Migration
  def change
    drop_table :comments
    create_table :comments do |t|
      t.text :body, :null => false
      t.integer :author_id, :null => false
      t.integer :subject_id, :null => false
      t.string :subject_type, :null => false

      t.timestamps null: false
    end

    add_index :comments, [:subject_type, :subject_id]
    add_index :comments, :author_id
  end
end
