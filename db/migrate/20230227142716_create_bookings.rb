class CreateBookings < ActiveRecord::Migration[7.0]
  def change
    create_table :bookings do |t|
      t.string :booking_date
      t.string :pick_up_date

      t.references :users, null: false, foreign_key: true
      t.references :cars, null: false, foreign_key: true

      t.timestamps
    end
  end
end
