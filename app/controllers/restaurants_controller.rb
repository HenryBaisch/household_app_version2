class RestaurantsController < ApplicationController

    def search
    end

    def nearby_restaurants
        @restaurants = YelpApiClient.search_nearby_restaurants_with_reviews(params[:latitude], params[:longitude], params[:radius])
    end
      
end
