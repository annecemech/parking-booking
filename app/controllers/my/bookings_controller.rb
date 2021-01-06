class My::BookingsController < ApplicationController
  def index
    @bookings = Booking.where(user_id: current_user)
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to my_bookings_path
  end
end
