class SubtypesController < ApplicationController
  def index
    @subtypes = Subtype.all
  end

  def show
    @subtype = Subtype.find(params[:id])
    @st_cards = Card.all
  end
end
