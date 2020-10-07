class Repair < ApplicationRecord
    belongs_to :mechanic
    belongs_to :vehicle
    accepts_nested_attributes_for :vehicle 

    validates :repair, presence: true
    validates :part, presence: true
    validates :price, presence: true

    def vehicle_attributes=(vehicle_attributes)
        vehicle = Vehicle.find_or_create_by(vehicle_attributes)
        self.vehicle = vehicle
        save 
    end

    def self.find_by_vehicle_id(id)
        where(vehicle: id)
    end

    def self.create_order_desc
        order("created_at DESC")
    end
end
