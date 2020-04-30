# README

FreeDoc is a Ruby app.

# Versions
* Ruby version 2.5.1
* Rails version 5.2.4

# Gem
* table_print: Use "tp" to visualize the information as tables
* faker: To create a fake database

This app helps manage a DB between doctors and patients.

# Before using 
Please run "rails db:seed" to refresh DB.

# DB content
* 50 doctors
* 16 specialty
* 150 patients
* 300 appointments
* 50 doctors
* 9 cities

# Relation between tables
* Doctor - Patient :            n - n
* Doctor - Appointment :        1 - n
* Patient - Appointment :       1 - n
* Doctor - City :               n - 1
* Patient - City :              n - 1
* Appointment - City :          n - 1
* Doctor - Specialty :          n - n (creation of Diplomat as join table)
* Doctor - Diplomat :    1 - n
* Specialty - Diplomat : 1 - n

# Run tests
* $ tp Doctor.all
* $ tp Specialty.all
* $ tp Patient.all
* $ tp Diplomat.where(doctor_id:"number")
