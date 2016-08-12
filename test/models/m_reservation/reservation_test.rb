require 'test_helper'

module MReservation
  class ReservationTest < ActiveSupport::TestCase
    def setup
      @reservation = m_reservation_reservations(:one)
    end

    test "TEST cover? methods" do
      assert_equal false, @reservation.cover?(Time.zone.local(2016, 4, 5, 13, 59, 59))
      assert_equal true, @reservation.cover?(Time.zone.local(2016, 4, 5, 14, 00, 00))
      assert_equal true, @reservation.cover?(Time.zone.local(2016, 4, 5, 14, 59, 59))
      assert_equal false, @reservation.cover?(Time.zone.local(2016, 4, 5, 15, 00, 00))
    end

    test "TEST uncover? methods" do
      assert_equal true, @reservation.uncover?(Time.zone.local(2016, 4, 5, 13, 59, 59))
      assert_equal false, @reservation.uncover?(Time.zone.local(2016, 4, 5, 14, 00, 00))
      assert_equal false, @reservation.uncover?(Time.zone.local(2016, 4, 5, 14, 59, 59))
      assert_equal true, @reservation.uncover?(Time.zone.local(2016, 4, 5, 15, 00, 00))
    end

  end
end
