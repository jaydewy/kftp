class PaymentsController < ApplicationController
  before_action :set_reservation, only: %i[ create update destroy ]
  before_action :set_payment, only: %i[ update destroy ]

  def create
    # @reservation = Reservation.find(params[:reservation_id])
    @payment = @reservation.payments.create(payment_params)

    respond_to do |format|
      format.html { redirect_to @reservation, notice: "Payment was successfully created." }
      format.json { render @reservation, status: :created, location: @payment }
      # if @fee.save
      #   format.html { redirect_to fees_path, notice: "Fee was successfully created." }
      #   format.json { render :show, status: :created, location: @fee }
      # else
      #   format.html { render :new, status: :unprocessable_entity }
      #   format.json { render json: @fee.errors, status: :unprocessable_entity }
      # end
    end
  end

  def update
    
  end

  def show
    # unused
  end

  def destroy
    # @reservation = Reservation.find(params[:reservation_id])
    # @payment = @reservation.payments.find(params[:id])
    @payment.destroy

    respond_to do |format|
      # NOTE: when deleting a nested resource, it is necessary to specify the
      #   status code as see_other otherwise DELETE will be called on parent as well
      format.html { redirect_to @reservation, status: :see_other, notice: "Payment was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  def void
    # Eventually, only allow voiding of Payments by regular users and make deleting an admin function
  end

  def by_date
    # for daily reporting
    # revisit
    @payments = Payment.get_payments_by_date(params[:dt])
  end

  private

  def set_reservation
    @reservation = Reservation.find(params[:reservation_id])
  end

  def set_payment
    @payment = @reservation.payments.find(params[:id])
  end

  def payment_params
    params.require(:payment).permit(:amount, :memo, :payment_method_id)
  end
end
