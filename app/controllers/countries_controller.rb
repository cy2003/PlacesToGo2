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
    @country = Country.create(country_params)
    redirect_to country_path(@country)
  end

  def edit
    @country = Country.find(params[:id])
  end

  def update
    @country = Country.create(country_params)
    redirect_to country_path(@country)
  end

  private

  def country_params
    params.require(:country).permit(
      :name
    )
  end

end
