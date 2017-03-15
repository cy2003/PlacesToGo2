class UserCountriesController < ApplicationController

  def index
    @user_countries = UserCountry.all
  end
  
end
