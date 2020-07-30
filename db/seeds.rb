# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

Doctor.destroy_all
Patient.destroy_all
Appointment.destroy_all
Capability.destroy_all
Specialty.destroy_all

10.times do
  city = City.create(name: Faker::Address.city)
end


8.times do 
    spe = Specialty.create(name: ["Cardiology", "Emergencies", "Other_things_in_gy"].sample)
 end


20.times do 
  doc = Doctor.new(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, zip_code: Faker::Code.npi)
  doc.city = City.all.sample
  doc.specialties = Specialty.all.sample(rand(1..2)) #Il faut faire gaffe parce qu'on gère un array vu qu'un doc peut avoir plusieurs spécialités du coup c'est ch*****
  doc.save
end


20.times do
  pat = Patient.new(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name)
  pat.city = City.all.sample
  pat.save
end

70.times do
  a = Appointment.new(date: Faker::Date.in_date_period)
  a.doctor = Doctor.all.sample
  a.patient = Patient.all.sample
  a.city = City.all.sample
  a.save
end 

30.times do
  c = Capability.new
   c.doctor = Doctor.all.sample
   c.specialty = Specialty.all.sample
   c.save
end
