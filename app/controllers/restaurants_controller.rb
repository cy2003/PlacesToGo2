require 'pry'

class RestaurantsController < ApplicationController

  def new
    @restaurant = Restaurant.create(:location_id => params[:location_id])
  end

  def create
    @restaurant = Restaurant.find_or_initialize_by(name: params[:restaurant][:name])
    @restaurant.location_id = params[:restaurant][:location_id]
    @restaurant.save
    current_user.restaurants << @restaurant
    flash[:notice] = "#{@restaurant.name} is a new restaurant."
    redirect_to restaurant_path(@restaurant)
  end

  def index
    @restaurants = Restaurant.all
  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end

  def update
    @restaurant = Restaurant.find_or_initialize_by(name: params[:restaurant][:name])
    @restaurant.website = params[:restaurant][:website]
    @restaurant.note = params[:restaurant][:note]
    @restaurant.location_id = params[:restaurant][:location_id]
    @restaurant.save
    if current_user.restaurants.include?(@restaurant)
      redirect_to restaurant_path(@restaurant)
    else
      current_user.restaurants << @restaurant
      redirect_to restaurant_path(@restaurant)
    end
  end

  def edit
    @restaurant = Restaurant.find(params[:id])
  end

  def destroy
    @restaurant = Restaurant.find(params[:id])
    @restaurant.destroy
    flash[:notice] = "You deleted #{@restaurant.name}."
    redirect_to restaurants_path
  end

end
