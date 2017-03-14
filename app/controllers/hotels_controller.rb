class HotelsController < ApplicationController

  def show
    @hotel = Hotel.find(params[:id])
    @user = User.find(session[:user_id])
  end

end
