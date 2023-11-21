class Console < ApplicationRecord
  belongs_to :user
  has_many :bookings
  validates :name, presence: true
  validates :price, presence: true
  validates :brand, presence: true
end
