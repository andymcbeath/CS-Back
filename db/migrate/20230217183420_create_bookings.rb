class CreateBookings < ActiveRecord::Migration[7.0]
  def change
    create_table :bookings do |t|
      t.string :firstName
      t.string :lastName
      t.string :email
      t.string :event

      t.timestamps
    end
  end
end
