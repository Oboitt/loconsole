class BookingsController < ApplicationController
  def new
    @booking = Booking.new
  end

  def create
  end

  #def bookings_request
    #@bookings = current_user.bookings
  #end
end
