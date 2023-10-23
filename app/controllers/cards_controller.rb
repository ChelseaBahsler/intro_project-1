class CardsController < ApplicationController
  def index
    @q = Card.ransack(params[:q])
    @cards = @q.result.order(:name).page(params[:page])
    @search_by = :name_or_artist_or_text_i_cont_any
  end

  def show
    @card = Card.find(params[:id])
    # associated tables
    @supertype = @card.supertype.name
    @types = @card.types
    @cardset = @card.cardset
    # links to associated tables
    @link_super = "/supertypes"
    @link_sub = "/subtypes"
    @link_type = "/types"
    @link_cardset = "/cardsets/#{@cardset.id}"
  end
end
