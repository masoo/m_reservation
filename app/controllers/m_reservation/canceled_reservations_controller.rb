require_dependency "m_reservation/application_controller"

module MReservation
  class CanceledReservationsController < ApplicationController
    before_action :set_canceled_reservation, only: [:show, :edit, :update, :destroy]

    # GET /canceled_reservations
    def index
      @canceled_reservations = CanceledReservation.all
    end

    # GET /canceled_reservations/1
    def show
    end

    # GET /canceled_reservations/new
    def new
      @canceled_reservation = CanceledReservation.new
    end

    # GET /canceled_reservations/1/edit
    def edit
    end

    # POST /canceled_reservations
    def create
      @canceled_reservation = CanceledReservation.new(canceled_reservation_params)

      if @canceled_reservation.save
        redirect_to @canceled_reservation, notice: 'Canceled reservation was successfully created.'
      else
        render :new
      end
    end

    # PATCH/PUT /canceled_reservations/1
    def update
      if @canceled_reservation.update(canceled_reservation_params)
        redirect_to @canceled_reservation, notice: 'Canceled reservation was successfully updated.'
      else
        render :edit
      end
    end

    # DELETE /canceled_reservations/1
    def destroy
      @canceled_reservation.destroy
      redirect_to canceled_reservations_url, notice: 'Canceled reservation was successfully destroyed.'
    end

    private
      # Use callbacks to share common setup or constraints between actions.
      def set_canceled_reservation
        @canceled_reservation = CanceledReservation.find(params[:id])
      end

      # Only allow a trusted parameter "white list" through.
      def canceled_reservation_params
        params.require(:canceled_reservation).permit(:started_at, :ended_at, :cancel_at)
      end
  end
end
