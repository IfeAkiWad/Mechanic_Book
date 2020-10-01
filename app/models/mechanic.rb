class Mechanic < ApplicationRecord
    has_many :repairs
    has_many :vehicles, through: :repairs
end
