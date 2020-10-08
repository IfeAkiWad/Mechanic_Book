class Vehicle < ApplicationRecord
    has_many :repairs
    has_many :mechanics, through: :repairs

    validates :owner_name, presence: true
    validates :vin_number, presence: true
    validates :make, presence: true
    validates :model, presence: true
    validates :year, presence: true
    validates :vehicle_type, presence: true
    validates :mileage, presence: true
    validates :symptom, presence: true

end
