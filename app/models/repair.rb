class Repair < ApplicationRecord
    belongs_to :mechanic
    belongs_to :vehicle
    accepts_nested_attributes_for :vehicle 

    def vehicle_attributes=(vehicle_attributes)
        vehicle = Vehicle.find_or_create_by(vehicle_attributes)
        self.vehicle = vehicle
        save 
    end
end
