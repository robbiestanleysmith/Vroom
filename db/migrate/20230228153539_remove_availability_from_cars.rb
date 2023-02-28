class RemoveAvailabilityFromCars < ActiveRecord::Migration[7.0]
  def change
    remove_column :cars, :availability
    remove_column :cars, :mileage
    add_column :cars, :mileage, :bigint
  end
end
