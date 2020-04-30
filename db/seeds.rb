# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

city_array = ["Lyon", "Paris", "Montpellier", "Lille", "Nantes", "Toulon", "Strasbourg", "Grenoble", "Bordeaux"]
city_array.each do |c|
    City.create!(city: c)
end

specialty_array = [{specialty:"oncologie"},{specialty:"gynecologie"},{specialty:"neurologie"},{specialty:"dermatologie"},{specialty:"medecine générale"},{specialty:"hematologie"},{specialty:"pédiatrie"},{specialty:"medecine interne"},{specialty:"dentiste"},{specialty:"allergologie"},{specialty:"nephrologie"},{specialty:"ophtalmologie"},{specialty:"endocrinologie"}, {specialty:"geriatrie"},{specialty:"chirurgie"},{specialty:"urologie"}]
specialty_array.each_with_index do |array, index|
    Specialty.create(array)
end

#Doctor.destroy_all
#50.times do
#    doctor = Doctor.create!(
#        first_name: Faker::Name.first_name,
#        last_name: Faker::Name.last_name,
#        zip_code: Faker::Address.zip_code,
#        city: City.all.sample
#    )
#end

Diplomat.destroy_all
100.times do
    diploma = Diplomat.create!(doctor: Doctor.all.sample, specialty: Specialty.all.sample)
end    

#Patient.destroy_all
#150.times do
#    patient = Patient.create!(
#        first_name: Faker::Name.first_name,
#        last_name: Faker::Name.last_name,
#        city: City.all.sample
#    )
#end

Appointment.destroy_all
300.times do
    appointment = Appointment.create!(
        date: Faker::Time.forward(days: rand(1..365), period: :day, format: :long),
        city: City.all.sample,
        doctor: Doctor.all.sample,
        patient: Patient.all.sample
    )
end
