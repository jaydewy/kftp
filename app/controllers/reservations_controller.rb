class ReservationsController < ApplicationController
  layout "reservation_show", only: [:show]

  before_action :set_reservation, only: %i[ show edit update destroy check_in check_out ]
  before_action :set_associations, only: %i[ new create edit update ]
  before_action :set_event, only: %i[ index show in_park search ]

  def index
    @reservations = Reservation.active_reservations
  end

  def new
    @reservation = Reservation.new
  end

  def create
    @reservation = Reservation.new(reservation_params)
    # calculate and set the total lot fee, minus discount if applicable
    @reservation.set_total
    @reservation.set_all_extras

    respond_to do |format|
      if @reservation.save
        format.html { redirect_to @reservation, notice: "Reservation was successfully created." }
        format.json { render :show, status: :created, location: @reservation }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @reservation.errors, status: :unprocessable_entity }
      end
    end
  end

  def show
  end

  def edit
  end

  def update
    # if @reservation.update(reservation_params)
    #   @reservation.set_total
    #   @reservation.set_all_extras
    #   if @reservation.save
    #     redirect_to @reservation
    #   else
    #     render :edit, status: :unprocessable_entity
    #   end
    # else
    #   render :edit, status: :unprocessable_entity
    # end

    respond_to do |format|
      if @reservation.update(reservation_params)
        @reservation.set_total
        @reservation.set_all_extras
        if @reservation.save
          format.html { redirect_to @reservation, notice: "Reservation was successfully updated." }
          format.json { render :show, status: :ok, location: @reservation }
        else
          format.html { render :new, status: :unprocessable_entity }
          format.json { render json: @reservation.errors, status: :unprocessable_entity }  
        end
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @reservation.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    # leave for now
    # want to archive any deleted reservation & payments - use callbacks in the model
    @reservation.destroy

    respond_to do |format|
      format.html { redirect_to reservations_url, status: :see_other, notice: "Reservation was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  def check_in
    @reservation.check_in
    @reservation.save
    redirect_to @reservation
  end

  def check_out
    # only intended to "undo" a check-in
    @reservation.check_out
    @reservation.save
    redirect_to @reservation
  end

  # Send a confirmation invoice (only includes the lot fee, not any extras) to the camper's email.
  def send_confirmation
    @reservation = Reservation.find(params[:id])
    CamperMailer.with(reservation: @reservation, camper: @reservation.camper).confirmation_invoice_email.deliver_later

    @inv = Invoice.new(recipient: @reservation.camper.email)
    # should handle any errors and report back with the notice

    respond_to do |format|
      if @inv.save
        format.html { redirect_to @reservation, notice: "Confirmation invoice sent." }
        format.json { render :show, status: :ok, location: @reservation }
      else
        format.html { render :show, status: :unprocessable_entity }
        format.json { render json: @inv.errors, status: :unprocessable_entity }
      end
    end
  end

  # collection routes

  def in_park
    # gets a list of all checked in reservations - i.e. in the park
    @in_park_reservations = Reservation.active_reservations.where("checked_in = ?", true).order(:lot_id)
    @total_reservations = Reservation.active_reservations.count
  end

  def search
    # search for reservations - by last name
    @reservations = Reservation.find_by_last_name(params[:query])
    render :index
  end

  private

    def set_reservation
      @reservation = Reservation.find(params[:id])
    end

    def set_associations
      @active_event = Event.active_event
      @campers = Camper.order(:last_name)
      @lots = Lot.order(:id)
      @discounts = Discount.order(:name)
    end

    def set_event
      @active_event = Event.active_event
    end

    def reservation_params
      params.require(:reservation).permit(:fair_year, :deposit, :override_total, :special_request, :slides, :length, :vehicle_license, :vehicle_province, :vehicle_license_2, :vehicle_province_2, :checked_in, :adults, :pets, :kids, :total, :confirmed, :ext_charges, :tax_str, :tax_amount, :log, :onetime_discount, :archived, :cancelled, :checked_in_time, :lot_id, :discount_id, :group_id, :camper_id, :non_renewable, :event_id, extra_charges_attributes: [:id, :extra_id, :number, :charge])
    end
end
