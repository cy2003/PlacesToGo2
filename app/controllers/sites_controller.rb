require 'pry'

class SitesController < ApplicationController

  def new
  end

  def index
    @sites = Site.all
  end

  def show
    @site = Sites.find(params[:id])
    @user = User.find(session[:user_id])
  end

end
