class DestinationsController < ApplicationController

  def index
    @destinations = Destination.all
  end

  def show
    @destination = Destination.find(params[:id])
  end

  def new
    @destination = Destination.new
  end

  def update
    @destination = Destination.find(params[:id])
    @destination = @destination.update(destination_params)
    if @destination.save
      redirect_to @destination
    else
      render :edit
    end
  end

  def edit
    @destination = Destination.find(params[:id])
  end

  private

  def destination_params
    params.require(:destination).permit(:name, :country)
  end

end
