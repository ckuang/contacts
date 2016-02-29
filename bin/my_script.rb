require 'addressable'
require 'rest-client'
require 'better_errors'
require 'binding_of_caller'

# url = Addressable::URI.new(
#   scheme: 'http',
#   host: 'localhost',
#   port: 3000,
#   path: '/users',
#   query_values: {
#     'land' => 'cow',
#     'sea[turtle]' => 'Crush',
#     'sea[fish]' => 'Nemo',
#     'sea[shark][name]' => 'Bruce',
#     'air' => 'bird'
#   }
# ).to_s
# puts RestClient.get(url)

def create_user
  url = Addressable::URI.new(
    scheme: 'http',
    host: 'localhost',
    port: 3000,
    path: '/users.json'
  ).to_s

  begin
  puts RestClient.post(
    url,
    { user: { name: "Bramble"} },

  )
rescue RestClient::Exception => e
  puts e
end


end

if __FILE__ == $0
  create_user
end
