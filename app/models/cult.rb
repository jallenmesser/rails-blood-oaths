class Cult < ApplicationRecord
    has_many :bloodoaths
    has_many :followers, through: :bloodoaths
end
