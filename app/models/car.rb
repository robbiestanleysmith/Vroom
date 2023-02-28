class Car < ApplicationRecord
  validates :car_type, presence: true
  validates :availability, presence: true
<<<<<<< HEAD
  validates :price, presence: true
  validates :location, presence: true
  validates :mileage, presence: true
  validates :model, presence: true
=======
  has_many_attached :photos
>>>>>>> 51d55fcfd5e30fc46664279df6f2e7c04c6d39a7
end
