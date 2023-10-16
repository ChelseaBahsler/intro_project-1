class CardsController < ApplicationController
  def index
    # @cards = Card.order(:name).page params[:page]
    @q = Card.ransack(params[:q])
    @cards = @q.result(distinct: true)
  end

  def show
    @card = Card.find(params[:id])
    @name = @card.name
    @types = @card.types
    @img = @card.imageurl
    @supertype = @card.supertype.name
    @hp = @card.hp
    @artist = @card.artist
    @description = @card.text
    @cardset = @card.cardset
  end
end
