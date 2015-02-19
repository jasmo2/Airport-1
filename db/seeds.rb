# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Airline.delete_all
Flight.delete_all
Departure.delete_all
Arrival.delete_all
for iteration in 1...8
	name = Faker::Name.name
	Airline.create!(id: iteration,:name => name)

	flightNumber = Faker::Address.state_abbr + Faker::Number.number(4)
	Flight.create!(id: iteration,number: flightNumber,airline_id: iteration)

	date = Faker::Time.forward(23, :morning)
	Departure.create!(id: iteration,date: date, flight_id: iteration)

	date2 = Faker::Time.forward(23, :morning)
	Arrival.create!(id: iteration,date: date2, flight_id: iteration)
end