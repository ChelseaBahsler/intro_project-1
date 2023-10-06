class LocationsController < ApplicationController
  belongs_to :cardsets
  validates :latitude :longitude, presence: true

  def index
  end
end
