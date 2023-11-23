class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :console
  has_many :reviews, dependent: :destroy
  validates :date_begin, presence: true
  validates :date_end, presence: true
end
