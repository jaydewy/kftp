class EventsController < ApplicationController
  def index
    @events = Event.order(:start_date)
  end

  def show
    @event = Event.find(params[:id])
    render :edit
  end

  def new
    @event = Event.new
  end

  def create
    @event = Event.new(event_params)

    if @event.save
      redirect_to events_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @event = Event.find(params[:id])
  end

  def update
    @event = Event.find(params[:id])
    
    if @event.update(event_params)
      redirect_to events_path
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    
  end

  private

  def event_params
    params.require(:event).permit(:name, :start_date, :end_date)
  end
end
