class Place < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy
  has_one_attached :photo

  validates :description, presence: true, length: { minimum: 2, maximum: 100 }
  validates :name, presence: true, uniqueness: true, length: { minimum: 2, maximum: 40 }
  validates :price_day, presence: true, comparison: { greater_than: 0 }
end
