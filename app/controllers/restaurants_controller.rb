require 'pry'

class RestaurantsController < ApplicationController

  def show
    @restaurant = Restaurant.find(params[:id])
    @user = User.find(session[:user_id])
    @city = City.find(params[:id])
  end

end
