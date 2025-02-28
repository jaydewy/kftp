class ExtrasController < ApplicationController
  before_action :authenticate_user!
  before_action :set_extra, only: %i[ show edit update destroy ]

  def index
    @extras = Extra.order(:name)
  end

  def show
    @events = Event.order(:name)
    render :edit
  end

  def new
    @extra = Extra.new
    @events = Event.order(:name)
  end

  def create
    @extra = Extra.new(extra_params)
    @events = Event.order(:name)

    respond_to do |format|
      if @extra.save
        format.html { redirect_to extras_path, notice: "Extra was successfully created." }
        format.json { render :show, status: :created, location: @extra }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @extra.errors, status: :unprocessable_entity }
      end
    end
  end

  def edit
    @events = Event.order(:name)
  end

  def update
    respond_to do |format|
      if @extra.update(extra_params)
        format.html { redirect_to extras_path, notice: "Extra was successfully updated." }
        format.json { render :show, status: :ok, location: @extra }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @extra.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @extra.destroy

    respond_to do |format|
      format.html { redirect_to extras_url, status: :see_other, notice: "Extra was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private

  def set_extra
    @extra = Extra.find(params[:id])
  end

  def extra_params
    params.require(:extra).permit(:name, :charge, :active, :event_id)
  end
end
