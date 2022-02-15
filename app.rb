require_relative "config/application"
require "pry-byebug"
require "sinatra"
require "sinatra/reloader"
require "sinatra/activerecord"

# localhost:4567/ # Get me the home page
get "/" do
  "Hello world!"
end

# GET /restaurants # lists restaurants
get "/restaurants" do
  # Ask MODEL for all restaurants
  @restaurants = Restaurant.all
  # Ask VIEW to display
  erb :"restaurants/index" # HTML embeded ruby
end

# GET /restaurants/1
# GET /restaurants/10
# GET /restaurants/5
get "/restaurants/:id" do
  # Ask MODEL for restaurant of the given id
  @restaurant = Restaurant.find(params[:id])
  # Ask restaurant for its name
  erb :"restaurants/show" # details
end

post "/restaurants" do
  # Coming from the form
  # params => {
  # "name"=>"Hangai",
  # "address"=>"Portal da Ilha 123",
  # "rating"=>"3"
  # }
  # Ask MODEL to instantiate a new restaurant
  @restaurant = Restaurant.new(
    name: params[:name],
    address: params[:address],
    rating: params[:rating]
  )
  @restaurant.save
  redirect "/restaurants/#{@restaurant.id}"
end
