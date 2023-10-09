class Location < ApplicationRecord
  belongs_to :cardset
  validates :latitude, :longitude, presence: true
end
