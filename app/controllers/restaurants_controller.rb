require 'pry'

class RestaurantsController < ApplicationController

  def index
  end 

  def show
    @restaurant = Restaurant.find(params[:id])
    @user = User.find(session[:user_id])
    @location = Location.find(params[:id])
  end

end
