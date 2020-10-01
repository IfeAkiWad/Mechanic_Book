class Vehicle < ApplicationRecord
    has_many :repairs
    has_many :mechanics, through: :repairs
end
