class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :parking_space

  validates :date, presence: true
end
