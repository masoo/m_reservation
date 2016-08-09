class CreateMReservationCanceledReservations < ActiveRecord::Migration
  def change
    create_table :m_reservation_canceled_reservations do |t|
      t.datetime :started_at
      t.datetime :ended_at
      t.datetime :cancel_at

      t.timestamps null: false
    end
  end
end
