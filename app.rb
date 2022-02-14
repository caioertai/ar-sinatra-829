require_relative "config/application"
require "sinatra"
require "sinatra/reloader"
require "sinatra/activerecord"

# localhost:4567/ # Get me the home page
get "/" do
  "Hello world!"
end

get "/le_wagon" do
  "Hello Le Wagon!"
end
