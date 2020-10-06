class Repair < ApplicationRecord
    belongs_to :mechanic
    belongs_to :vehicle
    accepts_nested_attributes_for :vehicle 
end
