class ReservationsController < ApplicationController
  
  def new
      @r = Reservation.new
      @r.flight = Flight.find(params[:flight_id])
      
  end
  
  def create
    if @r = Reservation.create(params[:reservation])
      @r.flight.seats = @r.flight.seats - 1
      @r.flight.save
      if @r.user.miles == nil
        @r.user.miles = @r.flight.distance
        @r.user.save
        redirect_to root_url, notice: "Booked It!"
      else
        @r.user.miles = @r.flight.distance + @r.user.miles 
        @r.user.save
        redirect_to root_url, notice: "Booked It"
    end
    else 
      redirect_to root_url notice: "Flight Not Booked :("
    end
  end
  
end