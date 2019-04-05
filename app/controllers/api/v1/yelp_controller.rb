require "json"
require "optparse"

class Api::V1::YelpController < ApplicationController


def search
rest_cuisine = params[:cuisine]
rest_location = params[:location]
response = RestClient::Request.execute(
  method: "GET",
  url: "https://api.yelp.com/v3/businesses/search?term=#{rest_cuisine}&location=#{rest_location}&categories=restaurants",
  headers: {Authorization: "Bearer 8ESWJF5yfJ2HIjpxhoXJVnZ9CuXnQHtLMIlSgVwsGu1-Sr5VWaDhSThfTM6riZ-HbnTY_xjp8vbPk7wKEgwlSrpmTMFjzrwV9jy1X0CjQzzd-8AYhAbqfTcYasmgXHYx"}
)
  results = JSON.parse(response)
  render json: results
end

end
