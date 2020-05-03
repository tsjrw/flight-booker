# Preview all emails at http://localhost:3000/rails/mailers/passenger_mailer
class PassengerMailerPreview < ActionMailer::Preview
    def booking_email
        PassengerMailer.with(booking: Booking.first).booking_email
    end
end
