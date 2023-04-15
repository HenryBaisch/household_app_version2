class HomeController < ApplicationController
  def index
    @city = request.location.city
  end
end
