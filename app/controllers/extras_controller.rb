class ExtrasController < ApplicationController
  def index
    @extras = Extra.order(:name)
  end

  def show
    @extra = Extra.find(params[:id])
    @events = Event.order(:name)
    render :edit
  end

  def new
    @extra = Extra.new
    @events = Event.order(:name)
  end

  def create
    @extra = Extra.new(extra_params)

    if @extra.save
      redirect_to extras_path
    else
      render :new, status: :unprocessable_entity
    end
    
  end

  def edit
    @extra = Extra.find(params[:id])
    @events = Event.order(:name)
  end

  def update
    @extra = Extra.find(params[:id])
    
    if @extra.update(extra_params)
      redirect_to extras_path
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    
  end

  private

  def extra_params
    params.require(:extra).permit(:name, :charge, :active, :event_id)
  end
end
