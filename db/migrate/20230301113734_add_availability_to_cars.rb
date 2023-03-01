class AddAvailabilityToCars < ActiveRecord::Migration[7.0]
  def change
    add_column :cars, :availability, :string
  end
end
