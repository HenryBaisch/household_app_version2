require 'httparty'

class YelpApiClient
  include HTTParty

  BASE_URL = 'https://api.yelp.com/v3'
  API_KEY = 'C9faQV7tBKJ-yfNqTJu8DBodjRUQWhNUio31XA3XwGU0Syr4AUQE-CAsiPOy9BRLsWEBxKz3UNFfN67bBo9yVbcOKZwcsV6DfjA13zvDMtxw6djS9Y3KY6OUKN05ZHYx'

  def self.search_nearby_restaurants(latitude, longitude, radius)
    options = {
      query: {
        latitude: latitude,
        longitude: longitude,
        radius: radius,
        categories: 'restaurants'
      },
      headers: {
        'Authorization' => "Bearer #{API_KEY}"
      }
    }

    response = get("#{BASE_URL}/businesses/search", options)
    response.parsed_response['businesses']
  end
end
