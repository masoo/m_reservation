require 'test_helper'

module MReservation
  class ReservationTest < ActiveSupport::TestCase
    def setup
      @reservation = m_reservation_reservations(:one)
    end

    test "TEST include? methods" do
      assert_equal false, @reservation.include?(Time.zone.local(2016, 4, 5, 13, 59, 59))
      assert_equal true, @reservation.include?(Time.zone.local(2016, 4, 5, 14, 00, 00))
      assert_equal true, @reservation.include?(Time.zone.local(2016, 4, 5, 14, 59, 59))
      assert_equal false, @reservation.include?(Time.zone.local(2016, 4, 5, 15, 00, 00))
    end

    test "TEST exclude? methods" do
      assert_equal true, @reservation.exclude?(Time.zone.local(2016, 4, 5, 13, 59, 59))
      assert_equal false, @reservation.exclude?(Time.zone.local(2016, 4, 5, 14, 00, 00))
      assert_equal false, @reservation.exclude?(Time.zone.local(2016, 4, 5, 14, 59, 59))
      assert_equal true, @reservation.exclude?(Time.zone.local(2016, 4, 5, 15, 00, 00))
    end

  end
end
