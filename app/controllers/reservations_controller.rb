class ReservationsController < ApplicationController
  
  def index
    @reservations = Reservation.order(:lot_id)
  end

  def list
    @reservations = Reservation.all
  end

  def new
    @reservation = Reservation.new
  end

  def create
    @reservation = Reservation.new(reservation_params)
    # calculate and set the total lot fee, minus discount if applicable
    @reservation.set_total
    @reservation.set_all_extras

    if @reservation.save!
      redirect_to @reservation
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @reservation = Reservation.find(params[:id])
  end

  def edit
    @reservation = Reservation.find(params[:id])
  end

  def update
    @reservation = Reservation.find(params[:id])
    @reservation.set_total
    @reservation.set_all_extras

    if @reservation.update(reservation_params)
      # calculate and update the total lot fee
      @reservation.set_total
      redirect_to @reservation
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    # leave for now
    # want to archive any deleted reservation?
  end

  def check_in
    @reservation = Reservation.find(params[:id])
    @reservation.check_in
    @reservation.save!
    redirect_to @reservation
  end

  def check_out
    # only intended to "undo" a check-in
    @reservation = Reservation.find(params[:id])
    @reservation.check_out
    @reservation.save!
    redirect_to @reservation
  end

  def in_park
    # gets a list of all checked in reservations - i.e. in the park
    @in_park_reservations = Reservation.where("checked_in = ?", true)
  end

  def search
    # search for reservations - by last name
    @reservations = Reservation.find_by_last_name(params[:query])
    render :index
  end

  private

    def reservation_params
      params.require(:reservation).permit(:fair_year, :deposit, :override_total, :special_request, :slides, :length, :vehicle_license, :vehicle_province, :vehicle_license_2, :vehicle_province_2, :checked_in, :adults, :pets, :kids, :total, :confirmed, :ext_charges, :tax_str, :tax_amount, :log, :onetime_discount, :archived, :cancelled, :checked_in_time, :lot_id, :discount_id, :group_id, :camper_id, :non_renewable, extra_charges_attributes: [:id, :extra_id, :number, :charge])
    end
end
