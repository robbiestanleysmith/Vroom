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
user1 = User.create(email: "rob@gmail.com", password: "123456", first_name: "rob", last_name: "smith")
user2 = User.create(email: "spongebob@gmail.com", password: "squarepants", first_name: "sponge", last_name: "bob")
user3 = User.create(email: "rick@gmail.com", password: "pickle", first_name: "rick", last_name: "morty")
user4 = User.create(email: "bc@gmail.com", password: "cliffjump", first_name: "bonnie", last_name: "clyde")
user5 = User.create(email: "vintagebrian@gmail.com", password: "carlife", first_name: "brian", last_name: "butterfield")

bmw = Car.create!(title: "Classic BMW", make: "BMW", model: "2002 tii", price_per_day: 170, location: "Guildford, Surrey", mileage: 75670, user: user1)

bmw1 = URI.open("https://res.cloudinary.com/dcuj8efm3/image/upload/v1677589295/3_uos9dm.jpg")

bmw.photos.attach(io: bmw1, filename: "bmw1.jpg", content_type: "image/jpg")
bmw2 = URI.open("https://res.cloudinary.com/dcuj8efm3/image/upload/v1677589295/2_xtxhij.jpg")
bmw.photos.attach(io: bmw2, filename: "bmw2.jpg", content_type: "image/jpg")
bmw3 = URI.open("https://res.cloudinary.com/dcuj8efm3/image/upload/v1677589295/6_vdlqja.jpg")
bmw.photos.attach(io: bmw3, filename: "bmw3.jpg", content_type: "image/jpg")
bmw4 = URI.open("https://res.cloudinary.com/dcuj8efm3/image/upload/v1677589295/4_jr1tq8.jpg")
bmw.photos.attach(io: bmw4, filename: "bmw4.jpg", content_type: "image/jpg")
bmw5 = URI.open("https://res.cloudinary.com/dcuj8efm3/image/upload/v1677589294/5_mvdheb.jpg")
bmw.photos.attach(io: bmw5, filename: "bmw5.jpg", content_type: "image/jpg")

alfaromeo = Car.create!(title: "Gorgeous pristine condition Alfa Romeo Duetto from 1957", make: "Alfa Romeo", model: "Duetto", price_per_day: 335, location: "Winchester, Wiltshire", mileage: 43124, user: user2)

ar1 = URI.open("https://res.cloudinary.com/dcuj8efm3/image/upload/v1677595687/1_1_klyrh5.jpg")
alfaromeo.photos.attach(io: ar1, filename: "ar1.jpg", content_type: "image/jpg")
ar2 = URI.open("https://res.cloudinary.com/dcuj8efm3/image/upload/v1677595688/7_1_zradsv.jpg")
alfaromeo.photos.attach(io: ar2, filename: "ar2.jpg", content_type: "image/jpg")
ar3 = URI.open("https://res.cloudinary.com/dcuj8efm3/image/upload/v1677595688/2_1_nsxhk5.jpg")
alfaromeo.photos.attach(io: ar3, filename: "ar3.jpg", content_type: "image/jpg")
ar4 = URI.open("https://res.cloudinary.com/dcuj8efm3/image/upload/v1677595688/4_1_u7pkhk.jpg")
alfaromeo.photos.attach(io: ar4, filename: "ar4.jpg", content_type: "image/jpg")
ar5 = URI.open("https://res.cloudinary.com/dcuj8efm3/image/upload/v1677595687/9_1_p18tt9.jpg")
alfaromeo.photos.attach(io: ar5, filename: "ar5.jpg", content_type: "image/jpg")

austin = Car.create!(title: "Stylish vintage Austin Healey 100, drives like a dream!", make: "Austin", model: "Healey", price_per_day: 275, location: "Southampton, Hampshire", mileage: 98325, user: user3)

austin1 = URI.open("https://res.cloudinary.com/dcuj8efm3/image/upload/v1677599631/4_2_v18wxw.jpg")
austin.photos.attach(io: austin1, filename: "a1.jpg", content_type: "image/jpg")
austin2 = URI.open("https://res.cloudinary.com/dcuj8efm3/image/upload/v1677599631/1_2_ow92nh.jpg")
austin.photos.attach(io: austin2, filename: "a2.jpg", content_type: "image/jpg")
austin3 = URI.open("https://res.cloudinary.com/dcuj8efm3/image/upload/v1677599631/5_2_xrd36m.jpg")
austin.photos.attach(io: austin3, filename: "a3.jpg", content_type: "image/jpg")
austin4 = URI.open("https://res.cloudinary.com/dcuj8efm3/image/upload/v1677599631/6_2_rsdfhf.jpg")
austin.photos.attach(io: austin4, filename: "a4.jpg", content_type: "image/jpg")
austin5 = URI.open("https://res.cloudinary.com/dcuj8efm3/image/upload/v1677599631/2_2_vwlykr.jpg")
austin.photos.attach(io: austin5, filename: "a5.jpg", content_type: "image/jpg")

chev = Car.create!(title: "Chevrolet Corvette C1 in amazing condition!", make: "Chevrolet", model: "Corvette C1", price_per_day: 500, location: "Kensington, London", mileage: 56834, user: user3)

chev1 = URI.open("https://res.cloudinary.com/dcuj8efm3/image/upload/v1677600366/1_3_vxljl2.jpg")
chev.photos.attach(io: chev1, filename: "ch1.jpg", content_type: "image/jpg")
chev2 = URI.open("https://res.cloudinary.com/dcuj8efm3/image/upload/v1677600366/6_3_xfyj5d.jpg")
chev.photos.attach(io: chev2, filename: "ch2.jpg", content_type: "image/jpg")
chev3 = URI.open("https://res.cloudinary.com/dcuj8efm3/image/upload/v1677600366/2_3_cg2edl.jpg")
chev.photos.attach(io: chev3, filename: "ch3.jpg", content_type: "image/jpg")
chev4 = URI.open("https://res.cloudinary.com/dcuj8efm3/image/upload/v1677600366/5_3_yvmlla.jpg")
chev.photos.attach(io: chev4, filename: "ch4.jpg", content_type: "image/jpg")
chev5 = URI.open("https://res.cloudinary.com/dcuj8efm3/image/upload/v1677600366/10_2_cwmjdl.jpg")
chev.photos.attach(io: chev5, filename: "ch5.jpg", content_type: "image/jpg")

daimler = Car.create!(title: "Daimler SP 250 Dart in fantastic condition", make: "Daimler", model: "SP 250 Dart", price_per_day: 320, location: "Sevenoaks, Kent", mileage: 72814, user: user4)

daimler1 = URI.open("https://res.cloudinary.com/dcuj8efm3/image/upload/v1677600652/4_3_fltlov.jpg")
daimler.photos.attach(io: daimler1, filename: "d1.jpg", content_type: "image/jpg")
daimler2 = URI.open("https://res.cloudinary.com/dcuj8efm3/image/upload/v1677600652/1_4_gswkkq.jpg")
daimler.photos.attach(io: daimler2, filename: "d2.jpg", content_type: "image/jpg")
daimler3 = URI.open("https://res.cloudinary.com/dcuj8efm3/image/upload/v1677600652/6_4_hnslvb.jpg")
daimler.photos.attach(io: daimler3, filename: "d3.jpg", content_type: "image/jpg")
daimler4 = URI.open("https://res.cloudinary.com/dcuj8efm3/image/upload/v1677600652/8_2_rmbksd.jpg")
daimler.photos.attach(io: daimler4, filename: "d4.jpg", content_type: "image/jpg")
daimler5 = URI.open("https://res.cloudinary.com/dcuj8efm3/image/upload/v1677600652/2_4_e7afcj.jpg")
daimler.photos.attach(io: daimler5, filename: "d5.jpg", content_type: "image/jpg")

ferrari = Car.create!(title: "Ferrari 246 GT Dino - the ultimate vintage luxury driving experience!", make: "Ferrari", model: "246 GT Dino", price_per_day: 550, location: "Finchley, London", mileage: 37546, user: user5)

ferrari1 = URI.open("https://res.cloudinary.com/dcuj8efm3/image/upload/v1677601099/2_5_mxmsih.jpg")
ferrari.photos.attach(io: ferrari1, filename: "fe1.jpg", content_type: "image/jpg")
ferrari2 = URI.open("https://res.cloudinary.com/dcuj8efm3/image/upload/v1677601099/3_2_cjck9k.jpg")
ferrari.photos.attach(io: ferrari2, filename: "fe2.jpg", content_type: "image/jpg")
ferrari3 = URI.open("https://res.cloudinary.com/dcuj8efm3/image/upload/v1677601099/5_4_hhr84g.jpg")
ferrari.photos.attach(io: ferrari3, filename: "fe3.jpg", content_type: "image/jpg")
ferrari4 = URI.open("https://res.cloudinary.com/dcuj8efm3/image/upload/v1677601098/4_4_s1qdvk.jpg")
ferrari.photos.attach(io: ferrari4, filename: "fe4.jpg", content_type: "image/jpg")
ferrari5 = URI.open("https://res.cloudinary.com/dcuj8efm3/image/upload/v1677601098/1_5_bfghex.jpg")
ferrari.photos.attach(io: ferrari5, filename: "fe5.jpg", content_type: "image/jpg")

ford = Car.create!(title: "Ford Mustang Cabriolet: red alert, vintage swag!", make: "Ford", model: "Mustang Cabriolet", price_per_day: 425, location: "Stroud, Gloucestershire", mileage: 65832, user: user5)

ford1 = URI.open("https://res.cloudinary.com/dcuj8efm3/image/upload/v1677601459/1_6_znposs.jpg")
ford.photos.attach(io: ford1, filename: "fo1.jpg", content_type: "image/jpg")
ford2 = URI.open("https://res.cloudinary.com/dcuj8efm3/image/upload/v1677601459/4_5_gpr7mx.jpg")
ford.photos.attach(io: ford2, filename: "fo2.jpg", content_type: "image/jpg")
ford3 = URI.open("https://res.cloudinary.com/dcuj8efm3/image/upload/v1677601459/3_3_fntlur.jpg")
ford.photos.attach(io: ford3, filename: "fo3.jpg", content_type: "image/jpg")
ford4 = URI.open("https://res.cloudinary.com/dcuj8efm3/image/upload/v1677601459/5_5_thw2if.jpg")
ford.photos.attach(io: ford4, filename: "fo4.jpg", content_type: "image/jpg")
ford5 = URI.open("https://res.cloudinary.com/dcuj8efm3/image/upload/v1677601459/6_5_fnrvri.jpg")
ford.photos.attach(io: ford5, filename: "fo5.jpg", content_type: "image/jpg")

vic = Car.create!(title: "Pristine condition Ford Victoria Crown - live the dream!", make: "Ford", model: "Victoria Crown", price_per_day: 650, location: "Bath, Somerset", mileage: 84243, user: user5)

vic1 = URI.open("https://res.cloudinary.com/dcuj8efm3/image/upload/v1677602288/1_7_tgbsq2.jpg")
vic.photos.attach(io: vic1, filename: "v1.jpg", content_type: "image/jpg")
vic2 = URI.open("https://res.cloudinary.com/dcuj8efm3/image/upload/v1677602288/6_6_yeuzki.jpg")
vic.photos.attach(io: vic2, filename: "v2.jpg", content_type: "image/jpg")
vic3 = URI.open("https://res.cloudinary.com/dcuj8efm3/image/upload/v1677602288/4_6_x87fqo.jpg")
vic.photos.attach(io: vic3, filename: "v3.jpg", content_type: "image/jpg")
vic4 = URI.open("https://res.cloudinary.com/dcuj8efm3/image/upload/v1677602288/7_2_yas0sa.jpg")
vic.photos.attach(io: vic4, filename: "v4.jpg", content_type: "image/jpg")
vic5 = URI.open("https://res.cloudinary.com/dcuj8efm3/image/upload/v1677602288/8_3_acucys.jpg")
vic.photos.attach(io: vic5, filename: "v5.jpg", content_type: "image/jpg")

mini = Car.create!(title: "Classic Innocenti Mini 1001, throwback to the old days a great price!", make: "Innocenti", model: "Mini 1001", price_per_day: 140, location: "New Forest, Hampshire", mileage: 125690, user: user5)

mini1 = URI.open("https://res.cloudinary.com/dcuj8efm3/image/upload/v1677603194/1_8_pqdx6q.jpg")
mini.photos.attach(io: mini1, filename: "m1.jpg", content_type: "image/jpg")
mini2 = URI.open("https://res.cloudinary.com/dcuj8efm3/image/upload/v1677603194/4_7_bajpce.jpg")
mini.photos.attach(io: mini2, filename: "m2.jpg", content_type: "image/jpg")
mini3 = URI.open("https://res.cloudinary.com/dcuj8efm3/image/upload/v1677603194/5_6_mrp3bt.jpg")
mini.photos.attach(io: mini3, filename: "m3.jpg", content_type: "image/jpg")
mini4 = URI.open("https://res.cloudinary.com/dcuj8efm3/image/upload/v1677603194/2_6_semruk.jpg")
mini.photos.attach(io: mini4, filename: "m4.jpg", content_type: "image/jpg")
mini5 = URI.open("https://res.cloudinary.com/dcuj8efm3/image/upload/v1677603194/6_7_zpwp9z.jpg")
mini.photos.attach(io: mini5, filename: "m5.jpg", content_type: "image/jpg")

jag = Car.create!(title: "Jaguar E-Type 5.3 OTS, ultimate smooth driving experience", make: "Jaguar", model: "E-Type 5.3 OTS", price_per_day: 350, location: "Isle of Wight", mileage: 95436, user: user5)

jag1 = URI.open("https://res.cloudinary.com/dcuj8efm3/image/upload/v1677603453/1_9_uhtydb.jpg")
jag.photos.attach(io: jag1, filename: "j1.jpg", content_type: "image/jpg")
jag2 = URI.open("https://res.cloudinary.com/dcuj8efm3/image/upload/v1677603453/4_8_ldabnj.jpg")
jag.photos.attach(io: jag2, filename: "j2.jpg", content_type: "image/jpg")
jag3 = URI.open("https://res.cloudinary.com/dcuj8efm3/image/upload/v1677603453/3_4_ss6cn5.jpg")
jag.photos.attach(io: jag3, filename: "j3.jpg", content_type: "image/jpg")
jag4 = URI.open("https://res.cloudinary.com/dcuj8efm3/image/upload/v1677603453/2_7_fvbm0x.jpg")
jag.photos.attach(io: jag4, filename: "j4.jpg", content_type: "image/jpg")
jag5 = URI.open("https://res.cloudinary.com/dcuj8efm3/image/upload/v1677603453/5_7_rnqkez.jpg")
jag.photos.attach(io: jag5, filename: "j5.jpg", content_type: "image/jpg")

jag = Car.create!(title: "Jaguar E-Type 5.3 OTS, ultimate smooth driving experience", make: "Jaguar", model: "E-Type 5.3 OTS", price_per_day: 350, location: "Isle of Wight", mileage: 95436, user: user5)

jag1 = URI.open("https://res.cloudinary.com/dcuj8efm3/image/upload/v1677603453/1_9_uhtydb.jpg")
jag.photos.attach(io: jag1, filename: "j1.jpg", content_type: "image/jpg")
jag2 = URI.open("https://res.cloudinary.com/dcuj8efm3/image/upload/v1677603453/4_8_ldabnj.jpg")
jag.photos.attach(io: jag2, filename: "j2.jpg", content_type: "image/jpg")
jag3 = URI.open("https://res.cloudinary.com/dcuj8efm3/image/upload/v1677603453/3_4_ss6cn5.jpg")
jag.photos.attach(io: jag3, filename: "j3.jpg", content_type: "image/jpg")
jag4 = URI.open("https://res.cloudinary.com/dcuj8efm3/image/upload/v1677603453/2_7_fvbm0x.jpg")
jag.photos.attach(io: jag4, filename: "j4.jpg", content_type: "image/jpg")
jag5 = URI.open("https://res.cloudinary.com/dcuj8efm3/image/upload/v1677603453/5_7_rnqkez.jpg")
jag.photos.attach(io: jag5, filename: "j5.jpg", content_type: "image/jpg")

puts "database populated!"
