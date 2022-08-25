require "time"

class Booking < ApplicationRecord
  belongs_to :place
  belongs_to :user

  validates :startdate, comparison: { greater_than: Date.today }
  validates :enddate, comparison: { greater_than: :startdate }
end
