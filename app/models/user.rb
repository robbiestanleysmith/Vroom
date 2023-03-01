class User < ApplicationRecord
  # validates :first_name, presence: true
  # validates :last_name, presence: true
  # validates :email, presence: true
  # validates :email, uniqueness: true
  # validates :avatar, presence: true
  # validates :host_rating, presence: true
  # validates :host_answer, presence: true
  # validates :host_answer, inclusion: [true, false]
  has_many :cars
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
