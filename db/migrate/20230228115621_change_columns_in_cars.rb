class ChangeColumnsInCars < ActiveRecord::Migration[7.0]
  def change
    remove_column :cars, :car_type
    remove_column :cars, :make
    add_column :cars, :title, :string
  end
end
