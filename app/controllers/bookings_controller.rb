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
      redirect_to console_path(@console)
    else
      render "consoles/show", status: :unprocessable_entity
    end
  end


  def accept

    @booking = Booking.find(params[:id])
    @booking.update(status: 'accepted')
    redirect_to dashboard_path, notice: 'Booking request accepted.'
  end

  def reject

    @booking = Booking.find(params[:id])
    @booking.update(status: 'rejected')
    redirect_to dashboard_path, notice: 'Booking request refused.'
  end
  private

  def booking_params
    params.require(:booking).permit(:date_end, :date_begin)
  end

  def set_console
    @console = Console.find(params[:console_id])
  end


end
