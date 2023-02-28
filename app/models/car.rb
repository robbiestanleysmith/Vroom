class Car < ApplicationRecord
  validates :car_type, presence: true
  validates :availability, presence: true
  has_many_attached :photos
end
