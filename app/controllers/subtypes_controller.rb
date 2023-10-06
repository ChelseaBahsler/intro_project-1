class SubtypesController < ApplicationController
  validates :name presence: true, uniqueness: true

  has_many :cardsubtypes
  has_many :cards. through: :cardsubtypes

  def index
  end

  def show
  end
end
