class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :parking_space

  validates :date, presence: { message: "Vous devez renseigner une date pour votre réservation" }
  validates :user, uniqueness: { scope: :date, message: "Vous ne pouvez réserver qu'une place par jour" }
end
