class BookingsController < ApplicationController
  before_action :set_console, only: [:new, :create]
  before_action :authenticate_user!, only: [ :create]


  def new
    @booking = Booking.new
    @booking.user = current_user
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.console = @console
    @booking.user = current_user
    if @booking.save
      redirect_to bookings_path(current_user)
    else
      render :new, status: :unprocessable_entity
    end
  end
  private

  def booking_params
    params.require(:booking).permit(:date_end, :date_begin)
  end

  def set_console
    @console = Console.find(params[:console_id])
  end
end
