class Flight < ApplicationRecord

    belongs_to :airplane, optional: true
    belongs_to :user, optional: true
    has_many :reservations 

end
