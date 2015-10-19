class Comment < ActiveRecord::Base
  validates :body, :author_id, :subject_id, :subject_type, presence: true

  belongs_to(
    :author,
    class_name: "User",
    foreign_key: :author_id,
    primary_key: :id
  )

  belongs_to(
    :subject, polymorphic: true,
    class_name: :subject_type,
    foreign_key: :subject_id,
    primary_key: :id
  )

end
