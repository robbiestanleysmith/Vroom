class Car < ApplicationRecord
  validates :title, presence: true
  # validates :availability, presence: true
  has_many_attached :photos
  belongs_to :user
  has_many :bookings, dependent: :destroy
end
