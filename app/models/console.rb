class Console < ApplicationRecord
  belongs_to :user
  has_many :bookings
  validates :name, presence: true
  validates :price, presence: true
  validates :brand, presence: true
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
