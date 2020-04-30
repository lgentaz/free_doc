class Specialty < ApplicationRecord
    has_many :doctors, through: :diplomats
end
