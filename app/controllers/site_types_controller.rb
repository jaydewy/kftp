class SiteTypesController < ApplicationController
  before_action :set_site_type, only: %i[ show edit update destroy ]

  def index
    @site_types = SiteType.order(:name)
  end

  def show
    render :edit
  end

  def new
    @site_type = SiteType.new
  end

  def create
    @site_type = SiteType.new(site_type_params)

    respond_to do |format|
      if @site_type.save
        format.html { redirect_to site_types_path, notice: "Lot Type was successfully created." }
        format.json { render :show, status: :created, location: @site_type }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @site_type.errors, status: :unprocessable_entity }
      end
    end
  end

  def edit
  end

  def update
    respond_to do |format|
      if @site_type.update(site_type_params)
        format.html { redirect_to site_types_path, notice: "Lot Type was successfully updated." }
        format.json { render :show, status: :ok, location: @site_type }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @site_type.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @site_type.destroy

    respond_to do |format|
      format.html { redirect_to site_types_url, status: :see_other, notice: "Lot Type was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private

  def set_site_type
    @site_type = SiteType.find(params[:id])
  end

  def site_type_params
    params.require(:site_type).permit(:name)
  end

end
