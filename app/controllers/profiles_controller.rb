class ProfilesController < ApplicationController
  before_action :authenticate_user!

  def dashboard
    @consoles = current_user.consoles
    @bookings = current_user.bookings
    @bookings_requests = current_user.booking_requests
  end
end
