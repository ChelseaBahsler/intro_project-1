class CardsetsController < ApplicationController
  def index
    @cardsets = Cardset.order(:name).page params[:page]
  end

  def show
    @cardset = Cardset.find(params[:id])
    @cards = Card.where("cardset = id").order(:name)
  end
end
