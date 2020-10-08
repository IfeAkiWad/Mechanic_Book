class Mechanic < ApplicationRecord
    has_many :repairs
    has_many :vehicles, through: :repairs
    has_secure_password

    validates :username, presence: true
    validates :username, uniqueness: true
    validates :email, presence: true
    validates :email, uniqueness: {case_sensitive: false}    
end
