class PagesController < ApplicationController
  def home
    @cars = Car.all
  end

  def dashboard
    @user = User.first #-> Change to current user
    @bookings = Booking.all
    @cars = Car.all
  end
end
