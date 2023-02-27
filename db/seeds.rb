# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


email_suffix = %w[gmail.com hotmail.de live.com yahoo.com outlook.com]
car_brand = %w[Volvo BMW VW Audi Tesla Toyota]
car_type = %w[SUV sedan sportscar limousine]

10.times do
  Car.new()

end



10.times do
  first_name = Faker::Name.first_name
  last_name = Faker::Name.last_name

  email = "#{first_name}.#{last_name}@#{email_suffix.sample}"
  User.create(first_name: first_name,
              last_name: last_name,
              email: email)

end
