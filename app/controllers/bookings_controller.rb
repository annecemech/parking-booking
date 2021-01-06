class BookingsController < ApplicationController

def new
  @booking = Booking.new
end

def create
  @booking = Booking.new(booking_params)
  @booking.parking_space_id = params['parking_space_id']
  @booking.user = current_user

  if @booking.save
    redirect_to my_bookings_path
  else
    @parking_spaces = ParkingSpace.all
    render 'parking_spaces/index'
  end
end

private

  def booking_params
   params.require(:booking).permit(:date)
  end

end
