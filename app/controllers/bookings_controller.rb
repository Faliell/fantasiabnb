class BookingsController < ApplicationController

  def show
    @booking = Booking.find(params[:id])
    @place = Place.find(params[:place_id])
  end

  def new
    @booking = Booking.new
    @place = Place.find(params[:place_id])
  end

  def create
    @booking = Booking.new(booking_params)
    @place = Place.find(params[:place_id])
    @booking.user = current_user
    @booking.place = @place
    @booking.status = "pending"
    days = (@booking.enddate - @booking.startdate).to_i
    @booking.total_price = days * @place.price_day
    if @booking.save
      redirect_to place_booking_path(@place, @booking) #dashboard_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:startdate, :enddate)
  end
end
