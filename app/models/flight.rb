class Flight < ApplicationRecord

    belongs_to :airplane, optional: true
    has_many :reservations 
    # belongs_to :user, optional: true

end
