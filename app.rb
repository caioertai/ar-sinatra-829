require_relative "config/application"
require "sinatra"
require "sinatra/reloader"
require "sinatra/activerecord"

# localhost:4567/ # Get me the home page
get "/" do
  "Hello world!"
end

# http://localhost:4567/restaurants
get "/restaurants" do
  # View... now print the template
  erb :"restaurants/index" # HTML embeded ruby
end
