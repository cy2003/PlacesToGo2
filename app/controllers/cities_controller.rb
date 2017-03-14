require 'pry'

class CitiesController < ApplicationController

  def new
    @city = City.create(:country_id => params[:country_id])
  end

  def create
    binding.pry
    @city = City.find(params[:id])
    if !!@city.country_id
      @city = City.find(params[:id])
      @city.update(city_params)
      redirect_to city_path(@city)
    else
      @city = City.create(city_params)
      redirect_to city_path(@city)
    end
  end

  def show
    @city = City.find(params[:id])
    @user = User.find(session[:user_id])
  end

  def update
    if !!params[:city][:country_id]
      @city = City.find(params[:id])
      @city.update(city_params)
      redirect_to city_path(@city)
    else
      @city = City.create(city_params)
      redirect_to city_path(@city)
    end
  end

  private

  def city_params
    params.require(:city).permit(
      :name
    )
  end

end
