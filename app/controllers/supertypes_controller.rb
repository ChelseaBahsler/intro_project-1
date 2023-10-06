class SupertypesController < ApplicationController
  validates :name presence: true, uniqueness: true

  belongs_to :card

  def index
  end

  def show
  end
end
