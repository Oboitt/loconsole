class Console < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy
  has_many :reviews, dependent: :destroy
  validates :name, presence: true
  validates :price, presence: true
  validates :brand, presence: true
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
