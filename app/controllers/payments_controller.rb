class PaymentsController < ApplicationController


  # Need to revisit this controller
  def create
    @reservation = Reservation.find(params[:reservation_id])
    @payment = @reservation.payments.create(payment_params)
    redirect_to @reservation
  end

  def by_date
    # for daily reporting
    @payments = Payment.get_payments_by_date(params[:dt])
  end

  private

  def payment_params
    params.require(:payment).permit(:amount, :memo, :payment_method_id)
  end
end
