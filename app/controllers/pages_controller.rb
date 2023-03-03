class PagesController < ApplicationController
  def home
    @cars = Car.all
  end

  def host_dashboard
    @user = current_user
    @user_id = @user.id

    ## I want to get a list of bookings that the current user is the host of

    # Check which cars belong to the current user
    @host_cars = Car.where(user_id: @user_id)
    host_car_ids = []
    @host_cars.each do |car|
      host_car_ids << car.id
    end

    @all_bookings = Booking.all
    @host_bookings = @all_bookings.select { |booking| host_car_ids.include?(booking.car_id) }

  end

  def mybookings
    user = current_user
    user_id = user.id

    all_bookings = Booking.all
    @my_bookings = all_bookings.select { |booking| booking.user == user }
  end
end
