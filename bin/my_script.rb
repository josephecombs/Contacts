require 'addressable/uri'
require 'rest-client'

# p 'index'
# url = Addressable::URI.new(
#   scheme: 'http',
#   host: 'localhost',
#   port: 3000,
#   path: '/users.html',
# ).to_s
#
# puts RestClient.get(url)

p 'show'
url = Addressable::URI.new(
  scheme: 'http',
  host: 'localhost',
  port: 3000,
  path: '/users/1.html',
).to_s

puts RestClient.get(url)

# p 'create'
# url = Addressable::URI.new(
#   scheme: 'http',
#   host: 'localhost',
#   port: 3000,
#   path: '/users.html',
# ).to_s
#
# puts RestClient.post(url, { user: { username: 'Dennis Rodman' } })
# 
# p "update"
# url = Addressable::URI.new(
#   scheme: 'http',
#   host: 'localhost',
#   port: 3000,
#   path: '/users/4.html',
# ).to_s
#
# puts RestClient.patch(url, { user: { username: 'Dennis Rodman' } })

# p "delete"
# url = Addressable::URI.new(
#   scheme: 'http',
#   host: 'localhost',
#   port: 3000,
#   path: '/users/4.html',
# ).to_s
#
# puts RestClient.delete(url)
# 

# p 'create'
# url = Addressable::URI.new(
#   scheme: 'http',
#   host: 'localhost',
#   port: 3000,
#   path: '/contacts.html',
# ).to_s
#
# puts RestClient.post(url, { contact: { name: 'Dennis Rodman', email: 'drod@spurs.com', user_id: 2 } })


# p 'index'
# url = Addressable::URI.new(
#   scheme: 'http',
#   host: 'localhost',
#   port: 3000,
#   path: '/contacts.html',
# ).to_s
#
# puts RestClient.get(url)
#
# p 'show'
# url = Addressable::URI.new(
#   scheme: 'http',
#   host: 'localhost',
#   port: 3000,
#   path: '/contacts/4.html',
# ).to_s
#
# puts RestClient.get(url)
#
# p "update"
# url = Addressable::URI.new(
#   scheme: 'http',
#   host: 'localhost',
#   port: 3000,
#   path: '/contacts/4.html',
# ).to_s
#
# puts RestClient.patch(url, { contact: { name: 'Dennis the Meance', email: 'drod@NBAHOF.com', user_id: 3 } })
#
# p "delete"
# url = Addressable::URI.new(
#   scheme: 'http',
#   host: 'localhost',
#   port: 3000,
#   path: '/contacts/4.html',
# ).to_s
#
# puts RestClient.delete(url)

# p "delete"
# url = Addressable::URI.new(
#   scheme: 'http',
#   host: 'localhost',
#   port: 3000,
#   path: '/contact_shares/4.html',
# ).to_s
#
# puts RestClient.delete(url)
