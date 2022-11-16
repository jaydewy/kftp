class LotsController < ApplicationController
  def index
    @lots = Lot.order(:name)
  end

  def new
    @lot = Lot.new
    # also provide SiteTypes and Rates to build the Lot
    @site_types = SiteType.order(:name)
    @rates = Rate.order(:name)
  end

  def create
    @lot = Lot.new(lot_params)

    if @lot.save!
      redirect_to lots_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @lot = Lot.find(params[:id])

    render :edit
  end

  def edit
    @lot = Lot.find(params[:id])
    # also provide SiteTypes and Rates to build the Lot
    @site_types = SiteType.order(:name)
    @rates = Rate.order(:name)
  end

  def update
    @lot = Lot.find(params[:id])

    if @lot.update(lot_params)
      redirect_to lots_path
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
  end

  def open
    # use to create list of all unoccupied, active lots
    # this should go in the model
  end

  private

  def lot_params
    params.require(:lot).permit(:name, :length, :width, :special_condition, :unavailable, :site_type_id, :rate_id)
  end
  
end
