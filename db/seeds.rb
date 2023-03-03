require "open-uri"

puts "Cleaning database"
Car.destroy_all
User.destroy_all
Booking.destroy_all

puts "Seeding database"

user1 = User.create!(email: "rob@gmail.com", password: "123456", first_name: "rob", last_name: "smith", age: rand(18..95), address: Faker::Address.street_address, rating: rand(2.5...5.0).round(2), reviews: rand(15..100))

puts "Seeding 1/5 users..."
avatar1 = URI.open("https://res.cloudinary.com/dcuj8efm3/image/upload/v1677762559/rsz_rsz_2thumbnail_alps_selfie_i6mkbd.png")
user1.photo.attach(io: avatar1, filename: "av1.jpg", content_type: "image/png")

user2 = User.create!(email: "spongebob@gmail.com", password: "squarepants", first_name: "sponge", last_name: "bob", age: rand(18..95), address: Faker::Address.street_address, rating: rand(2.5...5.0).round(2), reviews: rand(15..100))
puts "Seeding 2/5 users..."
avatar2 = URI.open("https://res.cloudinary.com/dcuj8efm3/image/upload/v1677762866/spongebob_igaeww.jpg")
user2.photo.attach(io: avatar2, filename: "av2.jpg", content_type: "image/jpg")

user3 = User.create!(email: "rick@gmail.com", password: "pickle", first_name: "rick", last_name: "morty", age: rand(18..95), address: Faker::Address.street_address, rating: rand(2.5...5.0).round(2), reviews: rand(15..100))
puts "Seeding 3/5 users..."
avatar3 = URI.open("https://res.cloudinary.com/dcuj8efm3/image/upload/v1677764458/rick2_vwm1wj.png")
user3.photo.attach(io: avatar3, filename: "av3.jpg", content_type: "image/png")

user4 = User.create!(email: "bonnie@gmail.com", password: "killercouple", first_name: "bonnie", last_name: "clyde", age: rand(18..95), address: Faker::Address.street_address, rating: rand(2.5...5.0).round(2), reviews: rand(15..100))
puts "Seeding 4/5 users..."
avatar4 = URI.open("https://res.cloudinary.com/dcuj8efm3/image/upload/v1677764458/bonnie2_qnhju9.png")
user4.photo.attach(io: avatar4, filename: "av4.jpg", content_type: "image/jpg")

user5 = User.create!(email: "vintagebrian@gmail.com", password: "carlife", first_name: "brian", last_name: "butterfield", age: rand(18..95), address: Faker::Address.street_address, rating: rand(2.5...5.0).round(2), reviews: rand(15..100))
puts "Seeding 5/5 users..."
avatar5 = URI.open("https://res.cloudinary.com/dcuj8efm3/image/upload/v1677764458/brian2_lz7zhw.jpg")
user5.photo.attach(io: avatar5, filename: "av5.jpg", content_type: "image/jpg")

brians_cars = []

bmw = Car.create!(title: "Classic 1967 BMW 2002 tii, well loved and timeless style", make: "BMW", model: "2002 tii", \
  price_per_day: 170, location: "Guildford, Surrey", mileage: 75670, description: "The BMW 2002 is a car produced by the \
  German car company between 1971 and 1975. It has rear-wheel drive, independent wheel suspension and 4-speed manual transmission. \
  The BMW Serie 02 had a good commercial success, so the German company decided to improve the car by presenting the 2002 version with a \
  1990 cc engine, a car with a clearly sporty character.", user: user2)
puts "Seeding 1/10 cars..."

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

alfaromeo = Car.create!(title: "Gorgeous pristine condition Alfa Romeo Duetto from 1957", make: "Alfa Romeo", \
  model: "Duetto", price_per_day: 335, location: "Winchester, Wiltshire", mileage: 43124, description: "The Alfa Romeo Duetto is one of the\
   most famous cars of the Italian manufacturer, produced from 1966 to 1993. The cuttlefish bone version, launched on the market starting in \
   1966, is one of the most beautiful and popular models. The very rounded shape of the front and rear, connected by convex sides, is \
   reminiscent of a cuttlefish bone.", user: user2)
puts "Seeding 2/10 cars..."

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

austin = Car.create!(title: "Stylish vintage Austin Healey 100, drives like a dream!", make: "Austin", \
  model: "100", price_per_day: 275, location: "Southampton, Hampshire", mileage: 98325, \
  description: "The Austin-Healey 100 is a car produced by BMC between 1953 and 1958 and sold under the Austin-Healey brand. \
  The first series (signed BN1) had the engine of the A90 with 3-speed manual gearbox and was produced from 1953 to 1956. \
  The name 100 indicated the maximum speed that could be reached, 100 miles per hour (about 160 km/h).", user: user3)
puts "Seeding 3/10 cars..."

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

chev = Car.create!(title: "Chevrolet Corvette C1 in amazing condition!", make: "Chevrolet", \
  model: "Corvette C1", price_per_day: 500, location: "Kensington, London", mileage: 56834, \
  description: "The Chevrolet Corvette C1 represents the first generation of sports cars produced by the American \
  car manufacturer Chevrolet from 1953 to 1962. The 1958 model introduced the four front headlights and the prominent \
  grilles with numerous chrome plating. The interior and the instruments were updated, placing a tachometer directly in \
  front of the driver.", user: user3)
puts "Seeding 4/10 cars..."

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

daimler = Car.create!(title: "Daimler SP 250 Dart in fantastic condition", make: "Daimler", \
  model: "SP 250 Dart", price_per_day: 320, location: "Sevenoaks, Kent", mileage: 72814, \
  description: "Daimler SP 250 (known, unofficially, as ‘Dart’) is a car produced by Daimler Motor \
  Company between 1959 and 1964. The new V8 engine, which provided an impressive 140cv, was made entirely of \
  polished aluminum. The SP250 has a luxurious and refined cockpit (the dashboard, seats, and doors panels are \
    up-holstered in leather, while the floor was covered with fine wool.", user: user4)
puts "Seeding 5/10 cars..."

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

ferrari = Car.create!(title: "Ferrari 246 GT Dino - the ultimate driving experience!", make: "Ferrari", \
  model: "246 GT Dino", price_per_day: 550, location: "Finchley, London", mileage: 37546, \
  description: "The Ferrari Dine 246 was the first street model with a mid-engine built between 1969 and 1973.\
   The body was made of steel (not aluminum) by the Scaglietti body shop. \
   The weight gained by the body did not affect performance thanks to the increase in power that came from the new 2500cc motor.", user: user5)
brians_cars << ferrari
puts "Seeding 6/10 cars..."

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

ford = Car.create!(title: "Ford Mustang Cabriolet: red alert, vintage swag!", make: "Ford", \
  model: "Mustang Cabriolet", price_per_day: 425, location: "Stroud, Gloucestershire", mileage: 65832, \
  description: "The Ford Mustang was one of the first American muscle cars. The first model was introduced in \
  1964 in New York and it was clear right away that this car was destined to leave its mark in history. \
  The 1967 model was the first to undergo radical design improvements, with the introduction of a big 4.7 liter block V8 engine. ", user: user5)
brians_cars << ford
puts "Seeding 7/10 cars..."

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

vic = Car.create!(title: "Pristine condition 1955 Ford Crown Victoria - live the dream!", make: "Ford", \
  model: "Crown Victoria ", price_per_day: 650, location: "Bath, Somerset", mileage: 84243,\
   description: "The Ford Crown Victoria is the symbol of '50s American motoring for the showy chrome, \
   the bright colors in two tones and the wraparound windshield. For those who want the exclusivity of a truly\
    massive American car of the mid-50s. The door opening is automated by an electrical device, and so it is devoid of handles.", user: user5)
brians_cars << vic
puts "Seeding 8/10 cars..."

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

mini = Car.create!(title: "Classic Innocenti Mini 1001, throwback to the old days...", make: "Innocenti", \
  model: "Mini 1001", price_per_day: 140, location: "New Forest, Hampshire", mileage: 125690, \
  description: "The first Mini was designed and implemented to be maximally practical and accessible: \
  the engine was installed in the front so that the transverse gearbox placed under the engine only needed a \
  single oil pan, and independent suspension and 10-inch wheels restrict the invasiveness of the wheels inside the car.", user: user5)
brians_cars << mini
puts "Seeding 9/10 cars..."

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

jag = Car.create!(title: "Jaguar E-Type 5.3 OTS, super smooth driving experience", make: "Jaguar", \
  model: "E-Type 5.3 OTS", price_per_day: 350, location: "Isle of Wight", mileage: 95436, \
  description: "The Jaguar E-Type was produced by Jaguar from 1961 to 1975 and was revolutionary for the times, \
  both in regards to aesthetics and design. The car won the first place in the Top Sports Cars of the 60s \
  according to the magazine Sports Car International. It was mounted with the new V-12 engine, the braking \
  system was upgraded and it had power steering.", user: user5)
brians_cars << jag
puts "Seeding 10/10 cars..."

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


puts "Seeding bookings"

users = User.all.select { |user| user != user5 && user != user2 }
6.times {
  start_date = Faker::Date.between(from: '2022-09-23', to: '2023-09-25')
  end_date = start_date + rand(1..90)
  Booking.create(pickup_date: start_date, dropoff_date: end_date, user: users.sample, car: brians_cars.sample, status: "requested")
}

puts "Database seeded!"
