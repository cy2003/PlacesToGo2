require 'pry'

class SitesController < ApplicationController

  def new
    @site = Site.create(:location_id => params[:location_id])
  end

  def create
    @site = Site.find_or_initialize_by(name: params[:site][:name])
    @site.location_id = params[:site][:location_id]
    @site.save
    current_user.sites << @site
    flash[:notice] = "#{@site.name} is a new site."
    redirect_to site_path(@site)
  end

  def index
    @sites = Site.all
  end

  def show
    @site = Site.find(params[:id])
    @user = User.find(session[:user_id])
  end

  def update
    @site = Site.find_or_initialize_by(name: params[:site][:name])
    @site.website = params[:site][:website]
    @site.note = params[:site][:note]
    @site.location_id = params[:site][:location_id]
    @site.save
    if current_user.sites.include?(@site)
      redirect_to site_path(@site)
    else
      current_user.sites << @site
      redirect_to site_path(@site)
    end
  end

  def edit
    @site = Site.find(params[:id])
  end

  def destroy
    @site = Site.find(params[:id])
    @site.destroy
    flash[:notice] = "You deleted #{@site.name}."
    redirect_to sites_path
  end

end
