class SupertypesController < ApplicationController
  validates :name presence: true, uniqueness: true


  def index
  end

  def show
  end
end
