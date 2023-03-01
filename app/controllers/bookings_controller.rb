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
    @booking.user_id = current_user.id
    if @booking.save
      redirect_to root_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def confirm
    @booking = Booking.find(params[:id])
    @booking.status = "confirmed"
    @booking.save
    redirect_to dashboard_path, status: :see_other
  end

  def cancel
    @booking = Booking.find(params[:id])
    @booking.status = "cancelled"
    @booking.save
    redirect_to dashboard_path, status: :see_other
  end

  def decline
    @booking = Booking.find(params[:id])
    @booking.status = "declined"
    @booking.save
    redirect_to dashboard_path, status: :see_other
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
