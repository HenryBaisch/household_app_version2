class RestaurantsController < ApplicationController

    def search
    end

    def nearby_restaurants

      
        @restaurants = YelpApiClient.search_nearby_restaurants(latitude, longitude, radius)
    end
      
end
