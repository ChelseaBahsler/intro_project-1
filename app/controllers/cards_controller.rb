class CardsController < ApplicationController

  def index
    # @cards = Card.includes(:card_set).all
    @cards = Card.order(:name).page params[:page]
  end

  def show
    @card = Card.find(params[:id])
  end
end
