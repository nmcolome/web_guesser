require 'sinatra'
require 'sinatra/reloader'

get '/' do
  random_number = rand(101)
  secret_number = random_number
  "<h1>The secret number is #{secret_number}</h1>"
end
