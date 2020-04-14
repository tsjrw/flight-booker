class Flight < ApplicationRecord
    belongs_to :from_airport, class_name: :Airport
    belongs_to :to_airport, class_name: :Airport
    has_many :bookings

    def self.dates 
        all.map{|d| d.start.strftime("%d/%m/%Y")}.uniq
    end

    def self.search(params)
        flights = where("from_airport_id = ? AND to_airport_id = ?", params[:from_airport], params[:to_airport])
        ids = []
        flights.find_each do |f|
            ids << f.id if f.start.strftime("%d/%m/%Y") == params[:date]
        end
        find(ids)
    end

    def hour
        start.strftime("%H:%M")
    end

    def date
        start.strftime("%d/%m/%Y")
    end
end
