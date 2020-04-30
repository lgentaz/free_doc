# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

#City.destroy_all
#10.times do
#    city = City.create!(
#        city: ["Lyon", "Paris", "Montpellier", "Lille", "Nantes", "Toulon", "Strasbourg", "Grenoble", "Bordeaux"].sample
#    )
#end

#Doctor.destroy_all
#50.times do
#    doctor = Doctor.create!(
#        first_name: Faker::Name.first_name,
#        last_name: Faker::Name.last_name,
#        specialty: ["medecine générale", "dentiste", "ophtalmologie", "medecine générale","pédiatrie", "dermatologie", "neurologie", "medecine interne", "hematologie", "medecine générale","gynecoloie", "urologie","dentiste", "medecine générale","chirurgie","oncologie","pédiatrie","nephrologie", "medecine générale", "allergologie", "geriatrie", "chirurgie", "endocrinologie"].sample,
#        zip_code: Faker::Address.zip_code,
#        city: City.all.sample
#    )
#end

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
