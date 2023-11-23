class ProfilesController < ApplicationController
  before_action :authenticate_user!

  def dashboard
    @consoles = current_user.consoles
    @bookings = current_user.bookings
    @request_bookings = current_user.bookings_as_owner

  end
end
