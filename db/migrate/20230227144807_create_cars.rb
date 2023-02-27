class CreateCars < ActiveRecord::Migration[7.0]
  def change
    create_table :cars do |t|
      t.string :car_type
      t.text :availability

      t.references :user, foreign_key: { to_table: :cars }

      t.timestamps
    end
  end
end
