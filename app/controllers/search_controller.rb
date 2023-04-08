class SearchController < ApplicationController
    before_action :authenticate_user!
  
    def users
      @users = User.where('email LIKE ?', "%#{params[:query]}%")
    end
end
  