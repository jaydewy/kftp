class LotsController < ApplicationController
  def index
    @lots = Lot.all
  end

  def new
  end

  def create
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end

  def open
    # use to create list of all unoccupied, active lots
  end
  
end
