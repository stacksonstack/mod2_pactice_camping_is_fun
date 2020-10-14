class Camper < ApplicationRecord
    has_many :signups
    has_many :activities, through: :signups

    validates :time, numericality: {only_integer: true, greater_than: 0, less_than: 24}

    
end
