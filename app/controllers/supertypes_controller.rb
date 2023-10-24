class SupertypesController < ApplicationController
  def index
    @supertypes = Supertype.all
  end

  def show
    @st = Supertype.find(params[:id])
    @st_cards = Card.where(supertype_id: params[:id]).order(:name)
  end
end
