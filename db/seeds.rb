# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#----------------------------------------------------
puts "Start seeding"
puts "Cleaning DB"
#----------------------------------------------------
Booking.destroy_all
ParkingSpace.destroy_all
User.destroy_all
#----------------------------------------------------
puts "Cleaning OK"
#----------------------------------------------------
puts "Seeding users"

carine = User.create(
  first_name: "Carine",
  last_name: "Sireyjol",
  email: "carine@parking.com",
  password: "123456"
)

annececile = User.create(
  first_name: "Anne-Cécile",
  last_name: "Méchin",
  email: "anne-cecile@parking.com",
  password: "123456"
)

puts "Users OK"
#----------------------------------------------------
puts "Seeding parking spaces"

place1 = ParkingSpace.create
place2 = ParkingSpace.create
place3 = ParkingSpace.create
place4 = ParkingSpace.create
place4 = ParkingSpace.create
place6 = ParkingSpace.create
place7 = ParkingSpace.create

puts "Parking Spaces OK"
#----------------------------------------------------
puts "Seeding bookings"

booking1 = Booking.create(
  date: Date.today,
  user: carine,
  parking_space: place1
  )

booking2 = Booking.create(
  date: Date.today,
  user: annececile,
  parking_space: place2
  )

booking3 = Booking.create(
  date: Date.today + 1,
  user: carine,
  parking_space: place2
  )

booking4 = Booking.create(
  date: Date.today + 1,
  user: annececile,
  parking_space: place1
  )

puts "Bookings OK"
#----------------------------------------------------
puts "Seeding OK"
