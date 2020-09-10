class Follower < ApplicationRecord
    has_many :bloodoaths 
    has_many :cults, through: :bloodoaths
end
