class Booking < ApplicationRecord
  validates :pickup_date, presence: true
  validates :dropoff_date, presence: true
  # , date: { after_or_equal_to: :pickup_date}
  validates :status, inclusion: { in: %w(confirmed requested declined cancelled)}
end
