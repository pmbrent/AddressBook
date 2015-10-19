# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create!(username: "ephraim.p")
User.create!(username: "pat.b")
User.create!(username: "jtam")
User.create!(username: "cbaron")

Contact.create!(name: "Ephraim", email: "ephdawg3374@gmail.com", user_id: 1)
Contact.create!(name: "Carl", email: "c@appacademy.io", user_id: 4)
Contact.create!(name: "Jonathan", email: "j@appacademy.io", user_id: 3)

ContactShare.create!(contact_id: 2, user_id: 1)
ContactShare.create!(contact_id: 3, user_id: 1)
