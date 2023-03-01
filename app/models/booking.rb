class Booking < ApplicationRecord
  validates :pickup_date, presence: true
  validates :dropoff_date, presence: true
  validates :status, inclusion: { in: %w(confirmed requested declined cancelled)}
end
