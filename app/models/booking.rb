class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :console
  validates :date_begin, presence: true
  validates :date_end, presence: true
end
