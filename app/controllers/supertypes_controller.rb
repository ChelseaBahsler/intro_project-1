class SupertypesController < ApplicationController
  def index
    @supertypes = Supertype.all
  end

  def show
    @st = Supertype.find(params[:id])
  end
end
