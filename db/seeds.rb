# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

for iteration in 1...8
	Airline.create(:name Faker::Name.name)
	flightNumber = Faker::Address.state_abbr + Faker::Number.number(4)
	Flight.create(:number flightNumber)
	Departure.create(:date Faker::Time.forward(23, :morning))
	Arrival.create(:date Faker::Time.forward(23, :morning))
end