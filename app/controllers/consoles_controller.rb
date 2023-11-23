class ConsolesController < ApplicationController
  before_action :set_console, only: [:show, :edit, :update, :destroy]

  before_action :authenticate_user!, only: [ :create, :update, :destroy]
  def index
    @consoles = Console.all
    @markers = @consoles.geocoded.map do |console|
      {
        lat: console.latitude,
        lng: console.longitude,
        info_window_html: render_to_string(partial: "info_window", locals: {console: console}),
        marker_html: render_to_string(partial: "marker", locals: {console: console})
      }

    end
  end

  def show
    @booking = Booking.new
  end

  def new
    @console = Console.new
  end

  def create
    @console = Console.new(console_params)
    @console.user = current_user
    if @console.save
      redirect_to console_path(@console)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    @console.update(console_params)
    redirect_to console_path(@console)
  end

  def destroy
    @console.destroy
    redirect_to consoles_path, status: :see_other
  end

  private

  def console_params
    params.require(:console).permit(:name, :brand, :price)
  end

  def set_console
    @console = Console.find(params[:id])
  end
end
