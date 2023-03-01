class ChangeMileageToInteger < ActiveRecord::Migration[7.0]
  def change
    remove_column :cars, :price_per_day
    add_column :cars, :price_per_day, :integer
  end
end
