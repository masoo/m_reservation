require 'test_helper'

module MReservation
  class CanceledReservationsControllerTest < ActionController::TestCase
    setup do
      @canceled_reservation = m_reservation_canceled_reservations(:one)
      @routes = Engine.routes
    end

    test "should get index" do
      get :index
      assert_response :success
      assert_not_nil assigns(:canceled_reservations)
    end

    test "should get new" do
      get :new
      assert_response :success
    end

    test "should create canceled_reservation" do
      assert_difference('CanceledReservation.count') do
        post :create, canceled_reservation: { cancel_at: @canceled_reservation.cancel_at, ended_at: @canceled_reservation.ended_at, started_at: @canceled_reservation.started_at }
      end

      assert_redirected_to canceled_reservation_path(assigns(:canceled_reservation))
    end

    test "should show canceled_reservation" do
      get :show, id: @canceled_reservation
      assert_response :success
    end

    test "should get edit" do
      get :edit, id: @canceled_reservation
      assert_response :success
    end

    test "should update canceled_reservation" do
      patch :update, id: @canceled_reservation, canceled_reservation: { cancel_at: @canceled_reservation.cancel_at, ended_at: @canceled_reservation.ended_at, started_at: @canceled_reservation.started_at }
      assert_redirected_to canceled_reservation_path(assigns(:canceled_reservation))
    end

    test "should destroy canceled_reservation" do
      assert_difference('CanceledReservation.count', -1) do
        delete :destroy, id: @canceled_reservation
      end

      assert_redirected_to canceled_reservations_path
    end
  end
end
