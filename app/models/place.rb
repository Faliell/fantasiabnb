class Place < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy
  has_one_attached :photo

  #validates :place_type, inclusion: { in: ["Castle", "Tower", "House", "Prison", "Temple"] }
end
