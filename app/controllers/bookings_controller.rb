class BookingsController < ApplicationController

  def show
    @booking = Booking.find(params[:id])
    @booking = Booking.new
  end

  def new
    @car = Car.find(params[:car_id])
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.car_id = params[:car_id]
    @booking.user_id = User.first.id #-> Change this to current user!
    if @booking.save
      redirect_to root_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  # def edit
  #   @booking = Booking.find(params[:id])
  # end

  # def update
  #   @booking = Booking.find(params[:id])
  #   @booking.update(booking_params)
  # end

  # def destroy
  #   @booking.destroy
  #   redirect_to bookings_path, status: :see_other
  # end

  private

  def booking_params
    params.require(:booking).permit(:pickup_date, :dropoff_date)
  end
end
