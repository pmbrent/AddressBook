require 'addressable/uri'
require 'rest-client'

url = Addressable::URI.new(
  scheme: 'http',
  host: 'localhost',
  port: 3000,
  path: '/users.html'
).to_s


url2 = Addressable::URI.new(
  scheme: 'http',
  host: 'localhost',
  port: 3000,
  path: '/users/?val10=val2',
  query_values: {
    'some_category[a_key]' => 'another value',
    'some_category[a_second_key]' => 'yet another value',
    'some_category[inner_inner_hash][key]' => 'value',
    'something_else' => 'aaahhhhh'
  }
).to_s

url3 = Addressable::URI.new(
  scheme: 'http',
  host: 'localhost',
  port: 3000,
  path: '/users/1',
  query_values: { 'user[email]' => 'ephraim.pei@gmail.com' }
).to_s

url4 = Addressable::URI.new(
  scheme: 'http',
  host: 'localhost',
  port: 3000,
  path: '/users/2'
).to_s

puts RestClient.delete(url4)

# def create_user
#   url = Addressable::URI.new(
#     scheme: 'http',
#     host: 'localhost',
#     port: 3000,
#     path: '/users.json'
#   ).to_s
# begin
#   puts RestClient.post(
#     url,
#     { user: { name: "Gizmo", email: "gizmo@gizmo.gizmo" } }
#   )
# rescue RestClient::Exception => e
#     puts e.message
# end
