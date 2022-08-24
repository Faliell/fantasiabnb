class BookingsController < ApplicationController

  def new
    @booking = Booking.new
    @place = Place.find(params[:place_id])
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.place = @place
    @booking.status = "pending"
     @booking.save

  end

  private

  def booking_params
    params.require(:booking).permit(:startdate, :enddate)
  end
end
