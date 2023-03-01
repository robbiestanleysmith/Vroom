class AddDropoffDateToBookings < ActiveRecord::Migration[7.0]
  def change
    add_column :bookings, :dropoff_date, :string
  end
end
