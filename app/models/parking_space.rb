class ParkingSpace < ApplicationRecord
  has_many :users, through: :bookings
end
