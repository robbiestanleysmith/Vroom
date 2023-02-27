class Car < ApplicationRecord
  validates :car_type, presence: true
  validates :availability, presence: true
end
