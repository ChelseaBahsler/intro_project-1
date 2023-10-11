class SupertypesController < ApplicationController

  def index
    @supertypes = Supertype.all
  end

  def show
  end
end
