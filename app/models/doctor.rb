class Doctor < ApplicationRecord
    has_many :appointments, dependent: :destroy
    has_many :patients, through: :appointments
    has_many :specialties, through: :diplomats
    belongs_to :city
end
