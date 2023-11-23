class Console < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_many :reviews
  validates :name, presence: true
  validates :price, presence: true
  validates :brand, presence: true
  has_one_attached :photo
end
