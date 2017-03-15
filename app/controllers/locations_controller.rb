require 'pry'

class LocationsController < ApplicationController

  def new
    @location = Location.create(:country_id => params[:country_id])
  end

  def create
    @location = Location.find(params[:id])
    if !!@location.country_id
      @location = Location.find(params[:id])
      @location.update(location_params)
      redirect_to location_path(@location)
    else
      @location = Location.create(location_params)
      redirect_to location_path(@location)
    end
  end

  def show
    @location = Location.find(params[:id])
    @user = User.find(session[:user_id])
  end

  def update
    if !!params[:location][:country_id]
      @location = Location.find(params[:id])
      @location.update(location_params)
      redirect_to location_path(@location)
    else
      @location = Location.create(location_params)
      redirect_to location_path(@location)
    end
  end

  private

  def location_params
    params.require(:location).permit(
      :name
    )
  end

end
