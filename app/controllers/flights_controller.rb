class FlightsController < ApplicationController
  def index
    
    @selected_flights = Flight.search(flight_params)
    @info = @selected_flights.first
  end

private

    def flight_params
      params.permit(:to_airport, :from_airport, :passegers, :date)
    end
end
