class Car < ApplicationRecord

  has_many :bookings, dependent: :destroy
  belongs_to :user

  has_many_attached :photos

  validates :title, presence: true

  # include PgSearch::Model
  # pg_search_scope :search_by_title_and_description,
  #                 against: [:title, :description],
  #   using: { tsearch: { prefix: true } }

end
