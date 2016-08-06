class CreateMReservationResources < ActiveRecord::Migration
  def change
    create_table :m_reservation_resources do |t|
      t.text :name

      t.timestamps null: false
    end
  end
end
