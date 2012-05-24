class FlightsController < ApplicationController
  def index
    @flights = Flight.all
  end
  
  def show
      @r = Reservation.new
      @f = Flight.find_by_id(params[:id])
  end
end
