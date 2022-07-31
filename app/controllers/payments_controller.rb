class PaymentsController < ApplicationController
  def create
    @reservation = Reservation.find(params[:reservation_id])
    @payment = @reservation.payments.create(payment_params)
    redirect_to @reservation
  end

  private

  def payment_params
    params.require(:payment).permit(:amount, :memo, :payment_method_id)
  end
end
