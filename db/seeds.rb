# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require "open-uri"

# Seed users
email_suffix = %w[gmail.com hotmail.de live.com yahoo.com outlook.com]

50.times do
  first_name = Faker::Name.first_name
  last_name = Faker::Name.last_name

  email = "#{first_name}.#{last_name}@#{email_suffix.sample}"
  user = User.new(first_name: first_name,
              last_name: last_name,
              email: email)
  user.save
end

# Seed cars

# users = User.all
# title = %w[BMW VW Audi Tesla Toyota]
# 15.times do
#   car = Car.new(title: title.sample, availability: Faker::Date.in_date_period)
#   user = users.sample
#   car.user_id = user.id
#   car.save
# end
# cars = Car.all

# 10.times do
#   car = cars.sample
#   user = users.sample
#   booking = Booking.new(car_id: car.id,
#                             user_id: user.id,
#                             booking_date: Faker::Date.in_date_period,
#                             pickup_date: Faker::Date.in_date_period
#                           )
#   booking.save
# end

file1 = URI.open("https://res.cloudinary.com/dcuj8efm3/image/upload/v1677589295/3_uos9dm.jpg")
car = Car.new(title: "Classic BMW")
car.photo.attach(io: file1, filename: "bmw.jpg", content_type: "image/jpg")
car.save

file1 = URI.open("https://res.cloudinary.com/dcuj8efm3/image/upload/v1677589295/2_xtxhij.jpg")
car.photo.attach(io: file1, filename: "bmw2.jpg", content_type: "image/jpg")
