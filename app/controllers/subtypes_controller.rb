class SubtypesController < ApplicationController
  def index
    @subtypes = Subtype.all
  end

  def show; end
end
