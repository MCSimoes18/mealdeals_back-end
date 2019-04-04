require "json"
require "optparse"

class Api::V1::YelpController < ApplicationController

  # def index
  #   @restaurants = Restaurant.all
  #   render json: @restaurants
  # end

  def fetch
  rest_name = params[:_json]
  response = RestClient::Request.execute(
    method: :get,
    url: "https://api.yelp.com/v3/businesses/search?term=#{rest_name}&location=charlotte",
    headers: {Authorization: "Bearer 8ESWJF5yfJ2HIjpxhoXJVnZ9CuXnQHtLMIlSgVwsGu1-Sr5VWaDhSThfTM6riZ-HbnTY_xjp8vbPk7wKEgwlSrpmTMFjzrwV9jy1X0CjQzzd-8AYhAbqfTcYasmgXHYx"}
  )
    results = JSON.parse(response)
    render json: results
end

def search
rest_name = params[:_json]
response = RestClient::Request.execute(
  method: "GET",
  url: "https://api.yelp.com/v3/businesses/search?location=#{rest_name}",
  headers: {Authorization: "Bearer 8ESWJF5yfJ2HIjpxhoXJVnZ9CuXnQHtLMIlSgVwsGu1-Sr5VWaDhSThfTM6riZ-HbnTY_xjp8vbPk7wKEgwlSrpmTMFjzrwV9jy1X0CjQzzd-8AYhAbqfTcYasmgXHYx"}
)
  results = JSON.parse(response)
  render json: results
end

# def search
#   zipcode = params[:zipcode]
#   @json = Restaurant.find_or_build(zipcode)
#   render json: @json
# end

# def create(searchTerm)
#   rest_name = params[:_json]
#   response = RestClient::Request.execute(
#   method: :post,
#   url: "https://api.yelp.com/v3/businesses/search?term=#{rest_name}&location=#{searchTerm}",
#   headers: {Authorization: "Bearer 8ESWJF5yfJ2HIjpxhoXJVnZ9CuXnQHtLMIlSgVwsGu1-Sr5VWaDhSThfTM6riZ-HbnTY_xjp8vbPk7wKEgwlSrpmTMFjzrwV9jy1X0CjQzzd-8AYhAbqfTcYasmgXHYx"}
# )
#   results = JSON.parse(response)
#   render json: results
# end

  # API_HOST = "https://api.yelp.com"
  # SEARCH_PATH = "/v3/businesses/search"
  # BUSINESS_PATH = "/v3/businesses/"  # trailing / because we append the business id to the path
  # API_KEY = ENV["YELP_API"]
  #
  # DEFAULT_BUSINESS_ID = "yelp-san-francisco"
  # DEFAULT_TERM = "dinner"
  # DEFAULT_LOCATION = "New York, NY"
  # SEARCH_LIMIT = 5
  #
  # def self.search(term, location="new york")
  #   url = "#{API_HOST}#{SEARCH_PATH}"
  #   params = {
  #     term: term,
  #     location: location,
  #     limit: SEARCH_LIMIT
  #   }
  #   response = HTTP.auth("Bearer #{API_KEY}").get(url, params: params)
  #   response.parse["businesses"]
  #   byebug
  # end
  #
  # byebug
  #
  # puts "hello"

end
