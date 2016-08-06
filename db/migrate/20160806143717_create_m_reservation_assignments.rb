class CreateMReservationAssignments < ActiveRecord::Migration
  def change
    create_table :m_reservation_assignments do |t|
      t.references :reservation, index: true, foreign_key: true
      t.references :resource, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
