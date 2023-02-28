class AddColumnsToCars < ActiveRecord::Migration[7.0]
  def change
    add_column :cars, :make, :string
    add_column :cars, :model, :string
    add_column :cars, :mileage, :string
    add_column :cars, :price_per_day, :float
    add_column :cars, :location, :string
  end
end
