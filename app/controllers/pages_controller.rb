class PagesController < ApplicationController
  def home
    @cars = Car.all
  end

  def dashboard
    @user = current_user
    @bookings = Booking.all
    @cars = Car.all
  end
end
