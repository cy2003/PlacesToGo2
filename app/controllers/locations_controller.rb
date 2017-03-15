require 'pry'

class LocationsController < ApplicationController

  def new
    @location = Location.create(:country_id => params[:country_id])
  end

  def create
    @location = Location.find_or_initialize_by(name: params[:location][:name])
    @location.country_id = params[:location][:country_id]
    @location.save
    flash[:notice] = "#{@location.name} is a new location."
    redirect_to location_path(@location)
  end

  def show
    @location = Location.find(params[:id])
    @user = User.find(session[:user_id])
  end

  def update
    @location = Location.find_or_initialize_by(name: params[:location][:name])
    @location.country_id = params[:location][:country_id]
    @location.save
    redirect_to location_path(@location)
  end

  def edit
    @location = Location.find(params[:id])
  end

  def destroy
    @location = Location.find(params[:id])
    @location.destroy
    flash[:notice] = "You deleted #{@location.name}."
    redirect_to locations_path
  end

  private

  def location_params
    params.require(:location).permit(
      :name
    )
  end

end
