class PagesController < ApplicationController
  def home
    @cars = Car.all
  end

  def dashboard
    @user = current_user
    @user_id = @user.id

    ## I want to get a list of bookings that the current user is the host of

    # Check which cars belong to the current user
    host_cars = Car.where(user_id: @user_id)
    host_car_ids = []
    host_cars.each do |car|
      host_car_ids << car.id
    end

    # Get all bookings that include that car
    @all_bookings = Booking.all
    @host_bookings = @all_bookings.select { |booking| host_car_ids.include?(booking.car_id) }

    @cars = Car.all
  end
end
