class CardsetsController < ApplicationController

  def index
    @cardsets = Cardset.all
  end

  def show
    @cardset = Cardset.find(params[:id])
  end
end
