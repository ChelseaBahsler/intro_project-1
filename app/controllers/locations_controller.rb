class LocationsController < ApplicationController
  def index
    @cardset = Cardset.find(params[:id])
  end
end
