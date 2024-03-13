require 'sinatra'
require 'net/http'
require 'json'

set :bind, '0.0.0.0'

get '/' do
  content_type :json
  { message: "hello" }.to_json
end

get '/ip' do
  uri = URI('https://httpbin.org/ip')
  response = Net::HTTP.get(uri)
  
  content_type :json
  response
end
