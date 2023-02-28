class Car < ApplicationRecord
  validates :car_type, presence: true
  validates :availability, presence: true
  validates :price, presence: true
  validates :location, presence: true
  validates :mileage, presence: true
  validates :model, presence: true
end
