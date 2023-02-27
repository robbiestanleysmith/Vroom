class CreateCars < ActiveRecord::Migration[7.0]
  def change
    create_table :cars do |t|
      t.text :availability
      t.string :car_type

      t.timestamps
    end
  end
end
