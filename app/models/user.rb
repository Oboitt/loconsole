class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :bookings
  has_many :consoles
  validates :email, presence: true, uniqueness: true
  has_many :bookings_as_owner, through: :consoles, source: :bookings
end
