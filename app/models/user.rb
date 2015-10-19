class User < ActiveRecord::Base
  validates :username, presence: true, uniqueness: true

  has_one(
    :contact,
    dependent: :destroy,
    class_name: "Contact",
    foreign_key: :user_id,
    primary_key: :id
  )

  has_many(
    :contact_shares,
    dependent: :destroy,
    class_name: "ContactShare",
    foreign_key: :user_id,
    primary_key: :id
  )

  has_many(
    :shared_contacts,
    through: :contact_shares,
    source: :contact
  )

  has_many(
    :comments_authored,
    class_name: "Comment",
    foreign_key: :author_id,
    primary_key: :id
  )

  has_many(
    :comments_on,
    class_name: 'Comment',
    as: :subject
  )

  def all_contacts
    [contact].concat(shared_contacts)
  end

end
