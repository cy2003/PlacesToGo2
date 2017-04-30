class HotelsController < ApplicationController

    def new
      @hotel = Hotel.create(:location_id => params[:location_id])
    end

    def create
      @hotel = Hotel.find_or_initialize_by(name: params[:hotel][:name])
      @hotel.location_id = params[:hotel][:location_id]
      @hotel.save
      current_user.hotels << @hotel
      flash[:notice] = "#{@hotel.name} is a new hotel."
      redirect_to hotel_path(@hotel)
    end

    def index
      @hotels = Hotel.all
    end

    def show
      @hotel = Hotel.find(params[:id])
    end

    def update
      @hotel = Hotel.find_or_initialize_by(name: params[:hotel][:name])
      @hotel.website = params[:hotel][:website]
      @hotel.note = params[:hotel][:note]
      @hotel.location_id = params[:hotel][:location_id]
      @hotel.save
      if current_user.hotels.include?(@hotel)
        redirect_to hotel_path(@hotel)
      else
        current_user.hotels << @hotel
        flash[:notice] = "You've added #{@hotel.name}"
        redirect_to hotel_path(@hotel)
      end
    end

    def edit
      @hotel = Hotel.find(params[:id])
    end

    def destroy
      @hotel = Hotel.find(params[:id])
      @hotel.destroy
      flash[:notice] = "You deleted #{@hotel.name}."
      redirect_to hotels_path
    end

end
