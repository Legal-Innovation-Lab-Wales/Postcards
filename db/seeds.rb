# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'
@start_time = Time.now

puts("*******************************")
puts("Starting seed file")
puts("")

print "#{('Users')}\tStart: #{(Time.now - @start_time)}"
unless User.find_by_email('philr@purpleriver.dev').present?
  User.create!(
    name: 'Phil',
    surname: 'Reynolds',
    email: 'philr@purpleriver.dev',
    password: 'password',
  )
end

unless User.find_by_email('ieuan.skinner@swansea.ac.uk').present?
  User.create!(
    name: 'Ieuan',
    surname: 'Skinner',
    email: 'ieuan.skinner@swansea.ac.uk',
    password: 'password',
  )
end

unless User.find_by_email('a.j.wing@swansea.ac.uk').present?
  User.create!(
    name: 'Alex',
    surname: 'Wing',
    email: 'a.j.wing@swansea.ac.uk',
    password: 'password',
  )
end

unless User.find_by_email('g.d.andrews@swansea.ac.uk').present?
  User.create!(
    name: 'Gareth',
    surname: 'Andrews',
    email: 'g.d.andrews@swansea.ac.uk',
    password: 'password',
  )
end

@last_time = Time.now
puts "\tDuration: #{(Time.now - @last_time)}   Elapsed: #{(Time.now - @start_time)}"

print "#{('Postcards')}\tStart: #{(Time.now - @start_time)}"
  Postcard.create!(
  title: Faker::Address.city,
  body: Faker::Movies::HarryPotter.quote,
  from: Faker::Movies::HarryPotter.character
)

Postcard.create!(
  title: Faker::Address.city,
  body: Faker::Movies::HarryPotter.quote,
  from: Faker::Movies::HarryPotter.character
)

Postcard.create!(
  title: Faker::Address.city,
  body: Faker::Movies::HarryPotter.quote,
  from: Faker::Movies::HarryPotter.character
)

Postcard.create!(
  title: Faker::Address.city,
  body: Faker::Movies::HarryPotter.quote,
  from: Faker::Movies::HarryPotter.character
)

Postcard.create!(
  title: Faker::Address.city,
  body: Faker::Movies::HarryPotter.quote,
  from: Faker::Movies::HarryPotter.character
)

Postcard.create!(
  title: Faker::Address.city,
  body: Faker::Movies::HarryPotter.quote,
  from: Faker::Movies::HarryPotter.character
)


puts "\tDuration: #{(Time.now - @last_time)}   Elapsed: #{(Time.now - @start_time)}"
