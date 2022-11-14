class SiteTypesController < ApplicationController
  def index
    @site_types = SiteType.order(:name)
  end

  def show
    @site_type = SiteType.find(params[:id])

    render :edit
  end

  def new
    @site_type = SiteType.new
  end

  def create
    @site_type = SiteType.new(site_type_params)

    if @site_type.save
      redirect_to site_types_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @site_type = SiteType.find(params[:id])
  end

  def update
    @site_type = SiteType.find(params[:id])

    if @site_type.update(site_type_params)
      redirect_to site_types_path
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    
  end

  private

  def site_type_params
    params.require(:site_type).permit(:name)
  end

end
