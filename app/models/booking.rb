class Booking < ApplicationRecord
  validates: :booking_date, presence: true
  validates: :pick_up_date, presence: true
end
