class LocationsController < ApplicationController
  validates :latitude :longitude, presence: true
  def index
  end
end
