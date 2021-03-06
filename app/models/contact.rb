class Contact < ActiveRecord::Base
  validates :name, :user_id, :email, presence: true
  validates :email, :uniqueness => {:scope => :user_id}

  belongs_to(
    :owner,
    class_name: "User",
    foreign_key: :user_id,
    primary_key: :id
  )

  has_many(
    :contact_shares,
    class_name: "ContactShare",
    foreign_key: :contact_id,
    primary_key: :id
  )

  has_many(
    :shared_users,
    through: :contact_shares,
    source: :user
  )

  has_many(
    :comments_on,
    class_name: "Comment",
    as: :subject
  )

end
