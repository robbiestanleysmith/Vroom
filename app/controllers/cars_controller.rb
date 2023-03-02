class CarsController < ApplicationController
  # skip_before_action :authenticate_user!, only: :show

  def index
    # raise
    if params[:make].present?
      @cars = Car.where(make: params[:make])
    else
      @cars = Car.all
    end
  end

  def show
    @car = Car.find(params[:id])
    @booking = Booking.new
  end

  def new
    @car = Car.new
  end

  def create
    @car = Car.new(car_params)
    if @car.save
      redirect_to car_path(@car)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @car = Car.find(params[:id])
  end

  def update
    @car = Car.find(params[:id])
    @dog.update(dog_params)
  end

  def destroy
    @car = Car.find(params[:id])
    @car.destroy
    redirect_to root_path, status: :see_other
  end

  private

  def car_params
    params.require(:car).permit(:title, :availability, photos: [])
  end
end
