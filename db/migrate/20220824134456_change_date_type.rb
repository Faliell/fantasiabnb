class ChangeDateType < ActiveRecord::Migration[7.0]
  def change
    remove_column :bookings, :startdate
    remove_column :bookings, :enddate
    add_column :bookings, :startdate, :date
    add_column :bookings, :enddate, :date
  end
end
