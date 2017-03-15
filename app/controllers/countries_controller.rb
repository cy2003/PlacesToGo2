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
    @country = Country.find_or_initialize_by(name: params[:country][:name])
    @country.user_ids << current_user.id
    @user = User.find_by(id: current_user.id)
    @user.country_ids << @country.id
    @user.save
    @country.save
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
    redirect_to countries_path
  end

  private

  def country_params
    params.require(:country).permit(
      :name
    )
  end

end
