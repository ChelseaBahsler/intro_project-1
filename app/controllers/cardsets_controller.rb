class CardsetsController < ApplicationController
  def index
    @cardsets = Cardset.order(:name)
  end

  def show
    @cardset = Cardset.find(params[:id])
  end
end
