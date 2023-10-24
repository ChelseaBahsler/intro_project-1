class CardsetsController < ApplicationController
  def index
    @cardsets = Cardset.order(:name).page(params[:page]).per(50)
  end

  def show
    @cardset = Cardset.find(params[:id])
    @cs_cards = Card.where(cardset_id: params[:id]).order(:name)
  end
end
