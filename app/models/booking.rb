class Booking < ApplicationRecord
  validates :booking_date, presence: true
  validates :pickup_date, presence: true

end
