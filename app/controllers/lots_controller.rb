class LotsController < ApplicationController
  before_action :set_lot, only: %i[ edit update show destroy ]
  before_action :get_site_types, only: %i[ new create edit update ]

  def index
    @lots = Lot.order(:id)
    @active_event = Event.active_event
  end

  def new
    # see before_action
    @lot = Lot.new
  end

  def create
    @lot = Lot.new(lot_params)

    respond_to do |format|
      if @lot.save
        format.html { redirect_to lots_path, notice: "Lot " + @lot.name + " was successfully created." }
        format.json { render :show, status: :created, location: @lot }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @lot.errors, status: :unprocessable_entity }
      end
    end
  end

  def show
    render :edit
  end

  def edit
    # see before_action
  end

  def update
    respond_to do |format|
      if @lot.update(lot_params)
        format.html { redirect_to lots_path, notice: "Lot " + @lot.name + " was successfully updated." }
        format.json { render :show, status: :ok, location: @lot }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @lot.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    lot_name = @lot.name
    @lot.destroy

    respond_to do |format|
      format.html { redirect_to lots_url, status: :see_other, notice: "Lot " + lot_name + " was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private

  def set_lot
    @lot = Lot.find(params[:id])
  end

  def get_site_types
    @site_types = SiteType.order(:name)
  end

  def lot_params
    params.require(:lot).permit(:name, :length, :width, :special_condition, :unavailable, :site_type_id)
  end
  
end
