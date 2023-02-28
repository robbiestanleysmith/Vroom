class User < ApplicationRecord
<<<<<<< HEAD
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true
  validates :email, uniqueness: true
  validates :avatar, presence: true
  validates :host_rating, presence: true
  validates :host_answer, presence: true
  validates :host_answer, inclusion: [true, false]
=======
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
>>>>>>> eabf56a8c92b84e4fa39747b261d2f27b604c5c9
end
