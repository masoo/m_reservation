require 'test_helper'

module MReservation
  class MReservationServiceTest < ActionDispatch::IntegrationTest
    def setup
      @resource = m_reservation_resources(:one)
      @reservation1 = m_reservation_reservations(:one)
      @reservation2 = m_reservation_reservations(:two)
    end

    test "MReservation::Service::register_reservation? method" do
      started_at = Time.zone.local(2016, 4, 5, 14, 00, 00)
      ended_at = Time.zone.local(2016, 4, 5, 14, 59, 59)
      range = started_at..ended_at
      assert_equal true, MReservation::Service::register_reservation?(resource: @resource, range: range)

      started_at = Time.zone.local(2016, 4, 5, 13, 59, 59)
      ended_at = Time.zone.local(2016, 4, 5, 14, 59, 59)
      range = started_at..ended_at
      assert_equal false, MReservation::Service::register_reservation?(resource: @resource, range: range)

      started_at = Time.zone.local(2016, 4, 5, 14, 00, 00)
      ended_at = Time.zone.local(2016, 4, 5, 15, 00, 00)
      range = started_at..ended_at
      assert_equal false, MReservation::Service::register_reservation?(resource: @resource, range: range)

      started_at = Time.zone.local(2016, 4, 5, 14, 00, 00)
      ended_at = Time.zone.local(2016, 4, 5, 14, 59, 59)
      range = started_at...ended_at
      assert_equal true, MReservation::Service::register_reservation?(resource: @resource, range: range)

      started_at = Time.zone.local(2016, 4, 5, 13, 59, 59)
      ended_at = Time.zone.local(2016, 4, 5, 15, 00, 00)
      range = started_at...ended_at
      assert_equal false, MReservation::Service::register_reservation?(resource: @resource, range: range)

    end

    test "MReservation::Service::register_reservation method" do
      assert false
    end
  end
end
