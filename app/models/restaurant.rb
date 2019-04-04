class Restaurant < ApplicationRecord
  has_many :offers

 API_HOST = "https://api.yelp.com"
 SEARCH_PATH = "/v3/businesses/search"

  def self.search(location)
    url = "#{API_HOST}#{SEARCH_PATH}"
    params = {
      term: "coffee",
      location: location,
      limit: SEARCH_LIMIT
    }
    # response = HTTP.auth(bearer_token).get(url, params: params)
    @@search_results = response.parse["businesses"]
  end

  # def self.build
  #   puts @@search_results.length
  #   @@search_results.collect do |business|
  #     self.find_or_create_from_yelp(business)
  #   end
  # end
  #
  # def self.find_or_build(location)
  #   self.search(location)
  #   self.build
  # end


end
