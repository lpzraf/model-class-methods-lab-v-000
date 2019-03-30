class BoatsController < ApplicationController
  def index
    @boats = Boat.all
  end

  def show
    @boat = Boat.find(params[:id])
  end

  def new
    @boat = Boat.new
  end

  def create
    @boat = Boat.new(params)
    @boat.save
    redirect_to boat_path(@boat)
  end

  def update
    @boat = Boat.find(params[:id])
    @boat.update(params.require(:boat))
    redirect_to boat_path(@Boat)
  end

  def edit
    @boat = Boat.find(params[:id])
  end

end
