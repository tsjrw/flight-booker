class BookingsController < ApplicationController
  def show
    @booking = Booking.find(params[:id])
  end
  
  def new
    @flight = Flight.find(params[:flight][:id])
    @booking = Booking.new 
    n_passengers = params[:passengers].to_i
    n_passengers.times{ @booking.passengers.build }
  end

  def create
    @booking = Booking.new(booking_params)
    if @booking.save
      redirect_to @booking
    else
      render :new
    end
    
  end

  private
    def booking_params
      params.require(:booking).permit(:flight_id, passengers_attributes: [:name, :email]) #:id, 
    end
end
