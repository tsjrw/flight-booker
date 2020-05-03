class PassengerMailer < ApplicationMailer
    default from: "notifications@example.com"
    def booking_email
        @booking = params[:booking]
        @passenger = params[:booking].passengers.first
        @flight = params[:booking].flight
        mail to: @passenger.email, subject: "Thank you to book a flight with us."
    end
end
