class Car < ApplicationRecord
  validates :availability, presence: true
  has_many_attached :photos
end
