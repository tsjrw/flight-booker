Airport.create(code:'SFO')
Airport.create(code:'NYC')

Flight.create(from_airport_id: 1, to_airport_id: 2, start: DateTime.new(2020, 2, 3, 18, 50), duration: '2h')
Flight.create(from_airport_id: 2, to_airport_id: 1, start: DateTime.new(2020, 2, 3, 19, 30), duration: '2h')
Flight.create(from_airport_id: 1, to_airport_id: 2, start: DateTime.new(2020, 2, 4, 18, 50), duration: '2h')
Flight.create(from_airport_id: 2, to_airport_id: 1, start: DateTime.new(2020, 2, 4, 19, 30), duration: '2h')
Flight.create(from_airport_id: 2, to_airport_id: 1, start: DateTime.new(2020, 2, 4, 17, 45), duration: '2h')
