class RestaurantsController < ApplicationController
    
    def nearby_restaurants
        latitude = params[:latitude]
        longitude = params[:longitude]
        radius = params[:radius]
      
        @restaurants = YelpApiClient.search_nearby_restaurants(latitude, longitude, radius)
    end
      
end
