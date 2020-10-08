class Mechanic < ApplicationRecord
    has_many :repairs
    has_many :vehicles, through: :repairs
    has_many :vehicles
    has_secure_password

    validates :username, presence: true
    validates :username, uniqueness: true
    validates :email, presence: true
    validates :email, uniqueness: {case_sensitive: false}  
    
    def self.from_omniauth(auth)
        first_or_create_by(email: auth[:info][:email]) do |mechanic|
            mechanic.password = SecureRandom.hex(15)
        end
    end
end
