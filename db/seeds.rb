require "open-uri"

puts "cleaning database"
Car.destroy_all
User.destroy_all

puts "populating database"

# Seed users
email_suffix = %w[gmail.com hotmail.de live.com yahoo.com outlook.com]

# 50.times do
#   first_name = Faker::Name.first_name
#   last_name = Faker::Name.last_name

#   email = "#{first_name}.#{last_name}@#{email_suffix.sample}"
#   user = User.new(first_name: first_name,
#               last_name: last_name,
#               email: email)
#   user.save
# end

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
user1 = User.create(email: "rob@gmail.com", password: "123456")


bmw1 = URI.open("https://res.cloudinary.com/dcuj8efm3/image/upload/v1677589295/3_uos9dm.jpg")
car = Car.new(title: "Classic BMW", make: "BMW")
car.photos.attach(io: bmw1, filename: "bmw1.jpg", content_type: "image/jpg")
car.save

bmw2 = URI.open("https://res.cloudinary.com/dcuj8efm3/image/upload/v1677589295/2_xtxhij.jpg")
car.photos.attach(io: bmw2, filename: "bmw2.jpg", content_type: "image/jpg")

bmw3 = URI.open("https://res.cloudinary.com/dcuj8efm3/image/upload/v1677589295/6_vdlqja.jpg")
car.photos.attach(io: bmw3, filename: "bmw3.jpg", content_type: "image/jpg")

bmw4 = URI.open("https://res.cloudinary.com/dcuj8efm3/image/upload/v1677589295/4_jr1tq8.jpg")
car.photos.attach(io: bmw4, filename: "bmw4.jpg", content_type: "image/jpg")

bmw5 = URI.open("https://res.cloudinary.com/dcuj8efm3/image/upload/v1677589294/5_mvdheb.jpg")
car.photos.attach(io: bmw5, filename: "bmw5.jpg", content_type: "image/jpg")

bmw6 = URI.open("https://res.cloudinary.com/dcuj8efm3/image/upload/v1677589294/9_e1k0ir.jpg")
car.photos.attach(io: bmw6, filename: "bmw6.jpg", content_type: "image/jpg")

bmw7 = URI.open("https://res.cloudinary.com/dcuj8efm3/image/upload/v1677589294/7_pdy96v.jpg")
car.photos.attach(io: bmw7, filename: "bmw7.jpg", content_type: "image/jpg")

bmw8 = URI.open("https://res.cloudinary.com/dcuj8efm3/image/upload/v1677589294/10_kvzq3z.jpg")
car.photos.attach(io: bmw8, filename: "bmw8.jpg", content_type: "image/jpg")

bmw9 = URI.open("https://res.cloudinary.com/dcuj8efm3/image/upload/v1677589294/1_l2rgzw.jpg")
car.photos.attach(io: bmw9, filename: "bmw9.jpg", content_type: "image/jpg")

bmw10 = URI.open("https://res.cloudinary.com/dcuj8efm3/image/upload/v1677589294/8_y84qvs.jpg")
car.photos.attach(io: bmw10, filename: "bmw10.jpg", content_type: "image/jpg")

puts "database populated!"
