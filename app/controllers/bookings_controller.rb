class BookingsController < ApplicationController

def create
   @booking = Booking.new(booking_params)
    @booking.parking_space_id = params['parking_space_id']
    @booking.user = current_user

    if @booking.save
      redirect_to parking_spaces_path
    else
      render 'root'
    end
end

private

  def booking_params
   params.require(:booking).permit(:date)
  end

end
