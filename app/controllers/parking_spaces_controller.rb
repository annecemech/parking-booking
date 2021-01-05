class ParkingSpacesController < ApplicationController

  def index
    @parking_spaces = ParkingSpace.all
    @booking = Booking.new()
    if params['search'] != nil
      @search = params['search']['booking_date']
    end
  end

end
