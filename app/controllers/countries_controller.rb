require 'pry'

class CountriesController < ApplicationController

  def show
    @country = Country.find(params[:id])
    @user = User.find(session[:user_id])
  end

  def index
    @countries = Country.all
  end

  def new
    @country = Country.new
  end

  def create
    @country = Country.find_or_initialize_by(country_params)
    @country.users << current_user
    @country.save
    flash[:notice] = "#{@country.name} has been added to your list."
    redirect_to country_path(@country)
  end

  def edit
    @country = Country.find(params[:id])
  end

  def update
    @country = Country.find(params[:id])
    @country.update(country_params)
    redirect_to country_path(@country)
  end

  def destroy
    @country = Country.find(params[:id])
    @country.destroy
    flash[:notice] = "You deleted #{@country.name}."
    redirect_to countries_path
  end

  private

  def country_params
    params.require(:country).permit(
      :name
    )
  end

end
