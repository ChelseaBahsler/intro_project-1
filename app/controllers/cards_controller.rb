class CardsController < ApplicationController
  def index
    @cards = Card.includes(:cardset, :supertype, :types, :subtypes)

    if params[:search].present?
      @cards = @cards.where("name LIKE ? OR artist LIKE ? OR text LIKE ?", "%#{params[:search]}%",
                            "%#{params[:search]}%", "%#{params[:search]}%")
    end

    if params[:set].present? && params[:set] != "All Sets"
      @cards = @cards.where(cardset_id: params[:set])
    end

    @cards = @cards.order(:name).page(params[:page])
  end

  def show
    @card = Card.find(params[:id])
    # associated tables
    @supertype = @card.supertype
    @types = @card.types
    @cardset = @card.cardset
  end
end
