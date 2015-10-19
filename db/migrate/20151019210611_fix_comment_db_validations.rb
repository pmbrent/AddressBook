class FixCommentDbValidations < ActiveRecord::Migration
  def change
    change_column :comments, :subject_user_id, :integer, :null => true
    change_column :comments, :subject_contact_id, :integer, :null => true
  end
end
